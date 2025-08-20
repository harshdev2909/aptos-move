module harsh_adr::sample4 {
    use std::string::{String , utf8};

    #[test_only]
    use std::debug::print;

    fun sample_for_loop(number :u64) : u64 {
        let value = 0;
        for(i in 0..number){
            value = value + 1;
        };
        value
    }

    fun sample_loop(num :u64) :u64{
        let value = 0;
        let i :u64 = 0; 
        loop {
            value = value+1;
            i = i + 1;

            if (i >= num) 
                break;
        };
        value
    }

    fun sample_error ( word :String){
        if(word == utf8(b"test"))
            print(&utf8(b"bete"))
        else 
            abort 123;   

        assert!(word == utf8(b"test"),123);
        print(&utf8(b"correct"));     

    }

    #[test]
    fun test_loop(){
        let result = sample_for_loop(10);
        print(&result);
    }

    #[test]
    fun test () {
        let result  = sample_loop(10);
        print(&result);
    }

    #[test]
   
    fun test_error () {
        sample_error(utf8(b"test"));
        
    }
}