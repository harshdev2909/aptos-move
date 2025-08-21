module harsh_adr::sample5{

    use std::debug::print;

     const ADD : u64 = 0;
     const SUB :u64 = 1;
     const MUL:u64 = 2;
    
    fun calculator(a:u64 , b:u64 , opp:u64) :u64 {
        if(opp==ADD)
        return a+b
        else if (opp==SUB)
        return a-b
        else if (opp==MUL)
        return a*b
        else
        return a/b
    }

    // #[test]
    fun test(){
        let result = calculator(2,3,MUL);
        print(&result);
    }
    
}