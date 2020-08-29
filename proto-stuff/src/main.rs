trait Table<'table> {}

struct TableSchema<'table_schema> {
    pub _tab: &'table_schema str
}

struct RamTable<'ram_table> {
    schema: TableSchema<'ram_table>
}

impl<'ram_table_driver> Table<'ram_table_driver> for RamTable<'ram_table_driver> {}

fn create_table<'create_table>(schema: &TableSchema<'create_table>) -> Box<dyn Table<'create_table>> {
    Box::new(RamTable {
        schema: TableSchema::from(schema) //copying it, right?
    })
}

fn main() {
    println!("Hello, world!");
}
