use std::fs;
use std::env;
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

    let data: Config = serde_json::from_str(file_content.as_str())?;

 
    for item in data.data.iter() {
        let from = base_path.join(&item.from);
        let to = base_path.join(&item.to);
        print!("{:?}", from.as_os_str());
        print!("{:?}", to.as_os_str());
        fs::copy(from, to)?;  
    }
    Ok(())
}
