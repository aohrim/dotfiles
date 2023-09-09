use std::fs;
use std::path::Path;
use std::env;
use std::fs::File;
use serde_derive::Deserialize;
use serde_derive::Serialize;

#[derive(Serialize, Deserialize)]
struct Config {
    data: Vec<ConfigPathing>,
}

#[derive(Serialize, Deserialize)]
struct ConfigPathing {
    to: String,
    from: String,
}

fn main() -> std::io::Result<()> {
    let base_path = env::current_dir()?.join("configs");
    let configs = base_path.join("pathing.json");
    let file_content = fs::read_to_string(configs)?;
    let home = env::var("HOME").unwrap();

    let data: Config = serde_json::from_str(file_content.as_str())?;
    // todo: create folders if they don't exist
 
    for item in data.data.iter() {     
        let from = base_path.join(&item.from);
        let to_path = format!("{}{}", home, item.to);
        let to = Path::new(&to_path);
        let _ = fs::remove_file(to);
        let _ = File::create(to);
        let _ = fs::copy(from.as_os_str(), to.as_os_str());  
    }
    Ok(())
}
