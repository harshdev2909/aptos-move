address harsh_adr {

module one {
    friend harsh_adr::two;
    friend harsh_adr::three;  //only this module can access 
   public (friend) fun get_value():u64 {
        return 100
    }
}

module two {
    use harsh_adr::one::get_value;
    use std::debug::print;
    
    #[test] 
    fun test () {
        let get = get_value();
        print(&get);
    }
}

module three {
    use std::debug::print;

    #[test]
    fun test () {
        let gets = harsh_adr::one::get_value();
        print(&gets);
    }
}

}