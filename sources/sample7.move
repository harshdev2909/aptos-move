address harsh_adr{
    module PriceOracle{
        public fun btc_price():u128{
            return 54200
        }
    }

    module casting{
        use harsh_adr::PriceOracle;
        use std::debug::print;

        fun calculate_swap (){
            let price = PriceOracle::btc_price();
            let price_w_fee:u64 = (price as u64)+5;
            print(&price_w_fee);
        }

        #[test]
        fun test (){
            calculate_swap();
        }
    }


} 