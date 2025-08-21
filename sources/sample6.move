module harsh_adr::sample6{
    use std::debug::print;
    fun bit_or(a: u64 ,b:u64):u64{
        return a|b
    }
    fun bit_and( a:u64 , b:u64):u64{
        return a&b
    }
    fun bitsift_right(a:u64 , times:u8):u64{
        return a<<times
    }
    fun bitsift_left(a:u64 , times:u8):u64{
        return a>>times
    }
    #[test]
    fun test(){
        let result = bit_or(7,4);
        print(&result);
        let and = bit_and(7,4);
        print(&and);

        let result = bitsift_right(7,2);
        print(&result);
        let result = bitsift_left(7,2);
        print(&result);
    }
}