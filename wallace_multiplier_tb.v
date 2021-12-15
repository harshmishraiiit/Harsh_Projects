

module wallace_multiplier_tb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;

    // Outputs
    wire [7:0] prod;
    integer i,j,error;

    // Instantiate the Unit Under Test (UUT)
    wallace uut (
        .a(a), 
        .b(b), 
        .prod(prod)
    );

    initial begin
        // Apply inputs for the whole range of A and B.
        // 16*16 = 256 inputs.
        error = 0;
        for(i=0;i <=15;i = i+1)
            for(j=0;j <=15;j = j+1) 
            begin
                a <= i; 
                b <= j;
                #1;
                if(prod != a*b) //if the result isnt correct increment "error".
                    error = error + 1;  
            end     
    end
      
endmodule