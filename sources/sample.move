module harsh_adr::sample {
    use std::debug;
    use std::string::{String , utf8};

    const ID:u64 = 100;

    fun set_value() : u64{
        let value:u64 = 100;
        let name:String = utf8(b"hello harsh");
        debug::print(&value);
        debug::print(&name);

        ID
    }


    // #[test]
    // fun test_function(){
    //     let xyz = set_value();
    //     debug::print(&xyz);
    // }
}