pragma solidity ^0.5.0;

contract Emprestimo {
      
     uint Principal = 12000;               
     uint TaxaDeJuros = 2;      
     uint Parcelas = 36;     
     uint TotalJuros;         
     uint Montante;        
     
    function  setAmount(uint _valor) public{
        if(Principal >= 0)
            Principal = Principal;
     }
                    
    function getTotalJuros() public returns (uint){
         juros = Principal * Parcelas * TaxaDeJuros;
         return TotalJuros;
     
     }
     
     function getMontante() public returns (uint){
         Montante = Principal + TotalJuros;
         return Montante;
     
     }
     
     constructor(
        address Mutuario,
        address Mutuante,
        uint _Montante,
    
   
      public payable {
        Mutuario = msg.sender;
        Mutuante = Mutuante;
        Montante = msg.value;
    )   
        function Pagamento() public {
        require(msg.sender == Mutuante);
        Mutuario.transfer(Montante);
        emit Recibo(true);
    }
}
    
}
