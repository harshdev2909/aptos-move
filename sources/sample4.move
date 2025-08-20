module harsh_adr::sample4 {
    

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
}