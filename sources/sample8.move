module harsh_adr::sample8{
    use std::debug::print;
    use std::string::{String,utf8};

    const HRSH:u64 = 1;
    const APT:u64 = 2;
    const ETH:u64 = 3;


    const Pool1_hrsh :u64 = 312;
    const Pool1_usdc :u64 = 3210;
    const HRSH_name :vector<u8> = b"hrsh reward";

    const Pool2_apt :u64 = 312;
    const Pool2_usdc :u64 = 3210;
    const APT_name :vector<u8> = b"APT reward";

    const Pool3_eth :u64 = 312;
    const Pool3_usdc :u64 = 3210;
    const ETH_name :vector<u8> = b"eth reward";

    fun get_supply(coin_symbol:u64):(u64 , u64 , vector<u8>){

        if(coin_symbol == HRSH ){
            return (Pool1_usdc ,Pool1_hrsh ,HRSH_name )
        }
        else if ( coin_symbol == APT){
            return (Pool2_usdc ,Pool2_apt ,APT_name )
        }
        else {
            return (Pool3_usdc ,Pool3_eth ,ETH_name )
        }

    }

    fun calculate_swap(coin1:u64 , coin2:u64 , coin1_amount:u64):u64{

        let fees = coin1_amount *5 /1000;
        let mix_supply = coin1*coin2;
        let new_usdc = coin1+coin1_amount;
        let new_hrsh = mix_supply / (new_usdc - fees);
        let recieved = coin2 - new_hrsh;

        return recieved
    }

    #[test]


    fun test(){
        let (coin1 , coin2 , name )= get_supply(HRSH);
        print(&utf8(name));
        let swap_amount = 495;
        print(&utf8(b"the price of the coin is"));
        print(&(coin1/coin2));
        let result = calculate_swap(coin1,coin2,swap_amount);
        print(&result); 
         
    }
}
