use std::fs;

fn main() {
    let names = match fs::read_to_string("problem022res/p022_names.txt") {
        Ok(s) => s,
        Err(e) => panic!("{}", e)
    };

    let names = names.replace("\"", "");
    let mut names : Vec<&str> = names.split(",").collect::<Vec<&str>>();
    names.sort();

    let sum: usize = names.into_iter()
    .map(|x : &str| x.bytes().map(|c: u8| (c as usize) - ('A' as usize) + 1).sum())
    .enumerate()
    .map(|(n, b) : (usize, usize)| (n + 1) * b)
    .sum();
    println!("{:?}", sum);
}

