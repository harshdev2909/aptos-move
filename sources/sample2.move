module harsh_adr::sample2{
    use std::debug::print;

    const MY_ADDR: address = @harsh_adr;
    fun confirm (number : u64) : bool {
        if(number > 0 ) 
            return true
        else 
            return false
    }

    // #[test_only]

    // #[test]
    // fun test_function(){
    //     let result = confirm(1);
    //     print(&result)

    // }
}