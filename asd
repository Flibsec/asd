use std::path::Path;
//use std::env;
use std::io;
use std::fs;
fn main() {
    //env::set_current_dir("/").unwrap();
    let mut a = String::new();
    println!("Введите полный путь к файлу:");
    io::stdin().read_line(&mut a).unwrap();
    let b = Path::new(a.trim());
    if b.is_file() {
        match fs::read_to_string(b) {
            Ok(text) => println!("{}", text.chars().count()),
            Err(err) => eprintln!("Ошибка при чтении файла.\nОшибка: {}", err),
        }
    } else {
        eprintln!("Нет такого файла.");
    }
}
