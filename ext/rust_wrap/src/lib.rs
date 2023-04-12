use magnus::{define_module, function, prelude::*, Error};

fn wrap(text: String, length: Option<usize>) -> String {
    textwrap::fill(text.as_str(), length.unwrap_or(80))
}

#[magnus::init]
fn init() -> Result<(), Error> {
    let module = define_module("RustWrap")?;
    module.define_singleton_method("wrap", function!(wrap, 2))?;
    Ok(())
}
