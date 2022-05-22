use lambda_runtime::{service_fn, Error, LambdaEvent};
use serde_json::{json, Value};

#[tokio::main]
async fn main() -> Result<(), Error> {
    let lambda_fn = service_fn(lambda_fn_entrypoint);
    lambda_runtime::run(lambda_fn).await?;
    Ok(())
}

async fn lambda_fn_entrypoint(event: LambdaEvent<Value>) -> Result<Value, Error> {
    let (event, _context) = event.into_parts();
    let first_name = event["firstName"].as_str().unwrap_or("world");

    let body = reqwest::get("https://httpbin.org/ip").await?.text().await?;

    Ok(json!({
        "message":
            format!(
                "Hello, {}!, this Lambda reached the internet using: {:?}",
                first_name, body,
            )
    }))
}
