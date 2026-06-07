module async_fifo (empty,
    full,
    rclk,
    rd_en,
    rrst_n,
    wclk,
    wrst_n,
    wtr_en,
    data_in,
    data_out);
 output empty;
 output full;
 input rclk;
 input rd_en;
 input rrst_n;
 input wclk;
 input wrst_n;
 input wtr_en;
 input [31:0] data_in;
 output [31:0] data_out;

 wire \ff_2_read/_00_ ;
 wire \ff_2_read/_01_ ;
 wire \ff_2_read/_02_ ;
 wire \ff_2_read/_03_ ;
 wire \ff_2_read/_04_ ;
 wire \ff_2_read/_05_ ;
 wire \ff_2_read/_06_ ;
 wire \ff_2_read/_07_ ;
 wire \ff_2_write/_00_ ;
 wire \ff_2_write/_01_ ;
 wire \ff_2_write/_02_ ;
 wire \ff_2_write/_03_ ;
 wire \ff_2_write/_04_ ;
 wire \ff_2_write/_05_ ;
 wire \ff_2_write/_06_ ;
 wire \ff_2_write/_07_ ;
 wire \memory/_0000_ ;
 wire \memory/_0001_ ;
 wire \memory/_0002_ ;
 wire \memory/_0003_ ;
 wire \memory/_0004_ ;
 wire \memory/_0005_ ;
 wire \memory/_0006_ ;
 wire \memory/_0007_ ;
 wire \memory/_0008_ ;
 wire \memory/_0009_ ;
 wire \memory/_0010_ ;
 wire \memory/_0011_ ;
 wire \memory/_0012_ ;
 wire \memory/_0013_ ;
 wire \memory/_0014_ ;
 wire \memory/_0015_ ;
 wire \memory/_0016_ ;
 wire \memory/_0017_ ;
 wire \memory/_0018_ ;
 wire \memory/_0019_ ;
 wire \memory/_0020_ ;
 wire \memory/_0021_ ;
 wire \memory/_0022_ ;
 wire \memory/_0023_ ;
 wire \memory/_0024_ ;
 wire \memory/_0025_ ;
 wire \memory/_0026_ ;
 wire \memory/_0027_ ;
 wire \memory/_0028_ ;
 wire \memory/_0029_ ;
 wire \memory/_0030_ ;
 wire \memory/_0031_ ;
 wire \memory/_0032_ ;
 wire \memory/_0033_ ;
 wire \memory/_0034_ ;
 wire \memory/_0035_ ;
 wire \memory/_0036_ ;
 wire \memory/_0037_ ;
 wire \memory/_0038_ ;
 wire \memory/_0039_ ;
 wire \memory/_0040_ ;
 wire \memory/_0041_ ;
 wire \memory/_0042_ ;
 wire \memory/_0043_ ;
 wire \memory/_0044_ ;
 wire \memory/_0045_ ;
 wire \memory/_0046_ ;
 wire \memory/_0047_ ;
 wire \memory/_0048_ ;
 wire \memory/_0049_ ;
 wire \memory/_0050_ ;
 wire \memory/_0051_ ;
 wire \memory/_0052_ ;
 wire \memory/_0053_ ;
 wire \memory/_0054_ ;
 wire \memory/_0055_ ;
 wire \memory/_0056_ ;
 wire \memory/_0057_ ;
 wire \memory/_0058_ ;
 wire \memory/_0059_ ;
 wire \memory/_0060_ ;
 wire \memory/_0061_ ;
 wire \memory/_0062_ ;
 wire \memory/_0063_ ;
 wire \memory/_0064_ ;
 wire \memory/_0065_ ;
 wire \memory/_0066_ ;
 wire \memory/_0067_ ;
 wire \memory/_0068_ ;
 wire \memory/_0069_ ;
 wire \memory/_0070_ ;
 wire \memory/_0071_ ;
 wire \memory/_0072_ ;
 wire \memory/_0073_ ;
 wire \memory/_0074_ ;
 wire \memory/_0075_ ;
 wire \memory/_0076_ ;
 wire \memory/_0077_ ;
 wire \memory/_0078_ ;
 wire \memory/_0079_ ;
 wire \memory/_0080_ ;
 wire \memory/_0081_ ;
 wire \memory/_0082_ ;
 wire \memory/_0083_ ;
 wire \memory/_0084_ ;
 wire \memory/_0085_ ;
 wire \memory/_0086_ ;
 wire \memory/_0087_ ;
 wire \memory/_0088_ ;
 wire \memory/_0089_ ;
 wire \memory/_0090_ ;
 wire \memory/_0091_ ;
 wire \memory/_0092_ ;
 wire \memory/_0093_ ;
 wire \memory/_0094_ ;
 wire \memory/_0095_ ;
 wire \memory/_0096_ ;
 wire \memory/_0097_ ;
 wire \memory/_0098_ ;
 wire \memory/_0099_ ;
 wire \memory/_0100_ ;
 wire \memory/_0101_ ;
 wire \memory/_0102_ ;
 wire \memory/_0103_ ;
 wire \memory/_0104_ ;
 wire \memory/_0105_ ;
 wire \memory/_0106_ ;
 wire \memory/_0107_ ;
 wire \memory/_0108_ ;
 wire \memory/_0109_ ;
 wire \memory/_0110_ ;
 wire \memory/_0111_ ;
 wire \memory/_0112_ ;
 wire \memory/_0113_ ;
 wire \memory/_0114_ ;
 wire \memory/_0115_ ;
 wire \memory/_0116_ ;
 wire \memory/_0117_ ;
 wire \memory/_0118_ ;
 wire \memory/_0119_ ;
 wire \memory/_0120_ ;
 wire \memory/_0121_ ;
 wire \memory/_0122_ ;
 wire \memory/_0123_ ;
 wire \memory/_0124_ ;
 wire \memory/_0125_ ;
 wire \memory/_0126_ ;
 wire \memory/_0127_ ;
 wire \memory/_0128_ ;
 wire \memory/_0129_ ;
 wire \memory/_0130_ ;
 wire \memory/_0131_ ;
 wire \memory/_0132_ ;
 wire \memory/_0133_ ;
 wire \memory/_0134_ ;
 wire \memory/_0135_ ;
 wire \memory/_0136_ ;
 wire \memory/_0137_ ;
 wire \memory/_0138_ ;
 wire \memory/_0139_ ;
 wire \memory/_0140_ ;
 wire \memory/_0141_ ;
 wire \memory/_0142_ ;
 wire \memory/_0143_ ;
 wire \memory/_0144_ ;
 wire \memory/_0145_ ;
 wire \memory/_0146_ ;
 wire \memory/_0147_ ;
 wire \memory/_0148_ ;
 wire \memory/_0149_ ;
 wire \memory/_0150_ ;
 wire \memory/_0151_ ;
 wire \memory/_0152_ ;
 wire \memory/_0153_ ;
 wire \memory/_0154_ ;
 wire \memory/_0155_ ;
 wire \memory/_0156_ ;
 wire \memory/_0157_ ;
 wire \memory/_0158_ ;
 wire \memory/_0159_ ;
 wire \memory/_0160_ ;
 wire \memory/_0161_ ;
 wire \memory/_0162_ ;
 wire \memory/_0163_ ;
 wire \memory/_0164_ ;
 wire \memory/_0165_ ;
 wire \memory/_0166_ ;
 wire \memory/_0167_ ;
 wire \memory/_0168_ ;
 wire \memory/_0169_ ;
 wire \memory/_0170_ ;
 wire \memory/_0171_ ;
 wire \memory/_0172_ ;
 wire \memory/_0173_ ;
 wire \memory/_0174_ ;
 wire \memory/_0175_ ;
 wire \memory/_0176_ ;
 wire \memory/_0177_ ;
 wire \memory/_0178_ ;
 wire \memory/_0179_ ;
 wire \memory/_0180_ ;
 wire \memory/_0181_ ;
 wire \memory/_0182_ ;
 wire \memory/_0183_ ;
 wire \memory/_0184_ ;
 wire \memory/_0185_ ;
 wire \memory/_0186_ ;
 wire \memory/_0187_ ;
 wire \memory/_0188_ ;
 wire \memory/_0189_ ;
 wire \memory/_0190_ ;
 wire \memory/_0191_ ;
 wire \memory/_0192_ ;
 wire \memory/_0193_ ;
 wire \memory/_0194_ ;
 wire \memory/_0195_ ;
 wire \memory/_0196_ ;
 wire \memory/_0197_ ;
 wire \memory/_0198_ ;
 wire \memory/_0199_ ;
 wire \memory/_0200_ ;
 wire \memory/_0201_ ;
 wire \memory/_0202_ ;
 wire \memory/_0203_ ;
 wire \memory/_0204_ ;
 wire \memory/_0205_ ;
 wire \memory/_0206_ ;
 wire \memory/_0207_ ;
 wire \memory/_0208_ ;
 wire \memory/_0209_ ;
 wire \memory/_0210_ ;
 wire \memory/_0211_ ;
 wire \memory/_0212_ ;
 wire \memory/_0213_ ;
 wire \memory/_0214_ ;
 wire \memory/_0215_ ;
 wire \memory/_0216_ ;
 wire \memory/_0217_ ;
 wire \memory/_0218_ ;
 wire \memory/_0219_ ;
 wire \memory/_0220_ ;
 wire \memory/_0221_ ;
 wire \memory/_0222_ ;
 wire \memory/_0223_ ;
 wire \memory/_0224_ ;
 wire \memory/_0225_ ;
 wire \memory/_0226_ ;
 wire \memory/_0227_ ;
 wire \memory/_0228_ ;
 wire \memory/_0229_ ;
 wire \memory/_0230_ ;
 wire \memory/_0231_ ;
 wire \memory/_0232_ ;
 wire \memory/_0233_ ;
 wire \memory/_0234_ ;
 wire \memory/_0235_ ;
 wire \memory/_0236_ ;
 wire \memory/_0237_ ;
 wire \memory/_0238_ ;
 wire \memory/_0239_ ;
 wire \memory/_0240_ ;
 wire \memory/_0241_ ;
 wire \memory/_0242_ ;
 wire \memory/_0243_ ;
 wire \memory/_0244_ ;
 wire \memory/_0245_ ;
 wire \memory/_0246_ ;
 wire \memory/_0247_ ;
 wire \memory/_0248_ ;
 wire \memory/_0249_ ;
 wire \memory/_0250_ ;
 wire \memory/_0251_ ;
 wire \memory/_0252_ ;
 wire \memory/_0253_ ;
 wire \memory/_0254_ ;
 wire \memory/_0255_ ;
 wire \memory/_0256_ ;
 wire \memory/_0257_ ;
 wire \memory/_0258_ ;
 wire \memory/_0259_ ;
 wire \memory/_0260_ ;
 wire \memory/_0261_ ;
 wire \memory/_0262_ ;
 wire \memory/_0263_ ;
 wire \memory/_0264_ ;
 wire \memory/_0265_ ;
 wire \memory/_0266_ ;
 wire \memory/_0267_ ;
 wire \memory/_0268_ ;
 wire \memory/_0269_ ;
 wire \memory/_0270_ ;
 wire \memory/_0271_ ;
 wire \memory/_0272_ ;
 wire \memory/_0273_ ;
 wire \memory/_0274_ ;
 wire \memory/_0275_ ;
 wire \memory/_0276_ ;
 wire \memory/_0277_ ;
 wire \memory/_0278_ ;
 wire \memory/_0279_ ;
 wire \memory/_0280_ ;
 wire \memory/_0281_ ;
 wire \memory/_0282_ ;
 wire \memory/_0283_ ;
 wire \memory/_0284_ ;
 wire \memory/_0285_ ;
 wire \memory/_0286_ ;
 wire \memory/_0287_ ;
 wire \memory/_0288_ ;
 wire \memory/_0289_ ;
 wire \memory/_0290_ ;
 wire \memory/_0291_ ;
 wire \memory/_0292_ ;
 wire \memory/_0293_ ;
 wire \memory/_0294_ ;
 wire \memory/_0295_ ;
 wire \memory/_0296_ ;
 wire \memory/_0297_ ;
 wire \memory/_0298_ ;
 wire \memory/_0299_ ;
 wire \memory/_0300_ ;
 wire \memory/_0301_ ;
 wire \memory/_0302_ ;
 wire \memory/_0303_ ;
 wire \memory/_0304_ ;
 wire \memory/_0305_ ;
 wire \memory/_0306_ ;
 wire \memory/_0307_ ;
 wire \memory/_0308_ ;
 wire \memory/_0309_ ;
 wire \memory/_0310_ ;
 wire \memory/_0311_ ;
 wire \memory/_0312_ ;
 wire \memory/_0313_ ;
 wire \memory/_0314_ ;
 wire \memory/_0315_ ;
 wire \memory/_0316_ ;
 wire \memory/_0317_ ;
 wire \memory/_0318_ ;
 wire \memory/_0319_ ;
 wire \memory/_0320_ ;
 wire \memory/_0321_ ;
 wire \memory/_0322_ ;
 wire \memory/_0323_ ;
 wire \memory/_0324_ ;
 wire \memory/_0325_ ;
 wire \memory/_0326_ ;
 wire \memory/_0327_ ;
 wire \memory/_0328_ ;
 wire \memory/_0329_ ;
 wire \memory/_0330_ ;
 wire \memory/_0331_ ;
 wire \memory/_0332_ ;
 wire \memory/_0333_ ;
 wire \memory/_0334_ ;
 wire \memory/_0335_ ;
 wire \memory/_0336_ ;
 wire \memory/_0337_ ;
 wire \memory/_0338_ ;
 wire \memory/_0339_ ;
 wire \memory/_0340_ ;
 wire \memory/_0341_ ;
 wire \memory/_0342_ ;
 wire \memory/_0343_ ;
 wire \memory/_0344_ ;
 wire \memory/_0345_ ;
 wire \memory/_0346_ ;
 wire \memory/_0347_ ;
 wire \memory/_0348_ ;
 wire \memory/_0349_ ;
 wire \memory/_0350_ ;
 wire \memory/_0351_ ;
 wire \memory/_0352_ ;
 wire \memory/_0353_ ;
 wire \memory/_0354_ ;
 wire \memory/_0355_ ;
 wire \memory/_0356_ ;
 wire \memory/_0357_ ;
 wire \memory/_0358_ ;
 wire \memory/_0359_ ;
 wire \memory/_0360_ ;
 wire \memory/_0361_ ;
 wire \memory/_0362_ ;
 wire \memory/_0363_ ;
 wire \memory/_0364_ ;
 wire \memory/_0365_ ;
 wire \memory/_0366_ ;
 wire \memory/_0367_ ;
 wire \memory/_0368_ ;
 wire \memory/_0369_ ;
 wire \memory/_0370_ ;
 wire \memory/_0371_ ;
 wire \memory/_0372_ ;
 wire \memory/_0373_ ;
 wire \memory/_0374_ ;
 wire \memory/_0375_ ;
 wire \memory/_0376_ ;
 wire \memory/_0377_ ;
 wire \memory/_0378_ ;
 wire \memory/_0379_ ;
 wire \memory/_0380_ ;
 wire \memory/_0381_ ;
 wire \memory/_0382_ ;
 wire \memory/_0383_ ;
 wire \memory/_0384_ ;
 wire \memory/_0385_ ;
 wire \memory/_0386_ ;
 wire \memory/_0387_ ;
 wire \memory/_0388_ ;
 wire \memory/_0389_ ;
 wire \memory/_0390_ ;
 wire \memory/_0391_ ;
 wire \memory/_0392_ ;
 wire \memory/_0393_ ;
 wire \memory/_0394_ ;
 wire \memory/_0395_ ;
 wire \memory/_0396_ ;
 wire \memory/_0397_ ;
 wire \memory/_0398_ ;
 wire \memory/_0399_ ;
 wire \memory/_0400_ ;
 wire \memory/_0401_ ;
 wire \memory/_0402_ ;
 wire \memory/_0403_ ;
 wire \memory/_0404_ ;
 wire \memory/_0405_ ;
 wire \memory/_0406_ ;
 wire \memory/_0407_ ;
 wire \memory/_0408_ ;
 wire \memory/_0409_ ;
 wire \memory/_0410_ ;
 wire \memory/_0411_ ;
 wire \memory/_0412_ ;
 wire \memory/_0413_ ;
 wire \memory/_0414_ ;
 wire \memory/_0415_ ;
 wire \memory/_0416_ ;
 wire \memory/_0417_ ;
 wire \memory/_0418_ ;
 wire \memory/_0419_ ;
 wire \memory/_0420_ ;
 wire \memory/_0421_ ;
 wire \memory/_0422_ ;
 wire \memory/_0423_ ;
 wire \memory/_0424_ ;
 wire \memory/_0425_ ;
 wire \memory/_0426_ ;
 wire \memory/_0427_ ;
 wire \memory/_0428_ ;
 wire \memory/_0429_ ;
 wire \memory/_0430_ ;
 wire \memory/_0431_ ;
 wire \memory/_0432_ ;
 wire \memory/_0433_ ;
 wire \memory/_0434_ ;
 wire \memory/_0435_ ;
 wire \memory/_0436_ ;
 wire \memory/_0437_ ;
 wire \read_pointer/_00_ ;
 wire \read_pointer/_01_ ;
 wire \read_pointer/_02_ ;
 wire \read_pointer/_03_ ;
 wire \read_pointer/_04_ ;
 wire \read_pointer/_05_ ;
 wire \read_pointer/_06_ ;
 wire \read_pointer/_07_ ;
 wire \read_pointer/_08_ ;
 wire \read_pointer/_09_ ;
 wire \read_pointer/_10_ ;
 wire \read_pointer/_11_ ;
 wire \read_pointer/_12_ ;
 wire \read_pointer/_13_ ;
 wire \read_pointer/_14_ ;
 wire \read_pointer/_15_ ;
 wire \read_pointer/_16_ ;
 wire \read_pointer/_17_ ;
 wire \read_pointer/_18_ ;
 wire \read_pointer/_19_ ;
 wire \write_pointer/_00_ ;
 wire \write_pointer/_01_ ;
 wire \write_pointer/_02_ ;
 wire \write_pointer/_03_ ;
 wire \write_pointer/_04_ ;
 wire \write_pointer/_05_ ;
 wire \write_pointer/_06_ ;
 wire \write_pointer/_07_ ;
 wire \write_pointer/_08_ ;
 wire \write_pointer/_09_ ;
 wire \write_pointer/_10_ ;
 wire \write_pointer/_11_ ;
 wire \write_pointer/_12_ ;
 wire \write_pointer/_13_ ;
 wire \write_pointer/_14_ ;
 wire \write_pointer/_15_ ;
 wire \write_pointer/_16_ ;
 wire \write_pointer/_17_ ;
 wire \write_pointer/_18_ ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire clknet_leaf_0_wclk;
 wire clknet_leaf_1_wclk;
 wire clknet_leaf_2_wclk;
 wire clknet_leaf_3_wclk;
 wire clknet_leaf_4_wclk;
 wire clknet_leaf_5_wclk;
 wire clknet_leaf_6_wclk;
 wire clknet_leaf_7_wclk;
 wire clknet_leaf_8_wclk;
 wire clknet_leaf_9_wclk;
 wire clknet_leaf_10_wclk;
 wire clknet_0_wclk;
 wire clknet_1_0__leaf_wclk;
 wire clknet_1_1__leaf_wclk;
 wire clknet_0_rclk;
 wire clknet_2_0__leaf_rclk;
 wire clknet_2_1__leaf_rclk;
 wire clknet_2_2__leaf_rclk;
 wire clknet_2_3__leaf_rclk;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire [3:0] \ff_2_read/ff_1 ;
 wire [3:0] \ff_2_write/ff_1 ;
 wire [31:0] \memory/mem[0] ;
 wire [31:0] \memory/mem[1] ;
 wire [31:0] \memory/mem[2] ;
 wire [31:0] \memory/mem[3] ;
 wire [31:0] \memory/mem[4] ;
 wire [31:0] \memory/mem[5] ;
 wire [31:0] \memory/mem[6] ;
 wire [31:0] \memory/mem[7] ;
 wire [3:0] rd_b_ptr;
 wire [3:0] rd_g_ptr;
 wire [3:0] rd_g_ptr_ff;
 wire [3:0] wtr_b_ptr;
 wire [3:0] wtr_g_ptr;
 wire [3:0] wtr_g_ptr_ff;

 sky130_fd_sc_hd__and2_0 \ff_2_read/_08_  (.A(rd_g_ptr[0]),
    .B(wrst_n),
    .X(\ff_2_read/_00_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_09_  (.A(wrst_n),
    .B(rd_g_ptr[1]),
    .X(\ff_2_read/_01_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_10_  (.A(wrst_n),
    .B(rd_g_ptr[2]),
    .X(\ff_2_read/_02_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_11_  (.A(wrst_n),
    .B(rd_g_ptr[3]),
    .X(\ff_2_read/_03_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_12_  (.A(wrst_n),
    .B(\ff_2_read/ff_1 [0]),
    .X(\ff_2_read/_04_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_13_  (.A(wrst_n),
    .B(\ff_2_read/ff_1 [1]),
    .X(\ff_2_read/_05_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_14_  (.A(wrst_n),
    .B(\ff_2_read/ff_1 [2]),
    .X(\ff_2_read/_06_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_read/_15_  (.A(wrst_n),
    .B(\ff_2_read/ff_1 [3]),
    .X(\ff_2_read/_07_ ));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_16_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_00_ ),
    .Q(\ff_2_read/ff_1 [0]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_17_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_01_ ),
    .Q(\ff_2_read/ff_1 [1]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_18_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_02_ ),
    .Q(\ff_2_read/ff_1 [2]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_19_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_03_ ),
    .Q(\ff_2_read/ff_1 [3]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_20_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_04_ ),
    .Q(rd_g_ptr_ff[0]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_21_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_05_ ),
    .Q(rd_g_ptr_ff[1]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_22_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_06_ ),
    .Q(rd_g_ptr_ff[2]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_read/_23_  (.CLK(clknet_leaf_2_wclk),
    .D(\ff_2_read/_07_ ),
    .Q(rd_g_ptr_ff[3]));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_08_  (.A(wtr_g_ptr[0]),
    .B(rrst_n),
    .X(\ff_2_write/_00_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_09_  (.A(rrst_n),
    .B(wtr_g_ptr[1]),
    .X(\ff_2_write/_01_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_10_  (.A(rrst_n),
    .B(wtr_g_ptr[2]),
    .X(\ff_2_write/_02_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_11_  (.A(rrst_n),
    .B(wtr_g_ptr[3]),
    .X(\ff_2_write/_03_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_12_  (.A(rrst_n),
    .B(\ff_2_write/ff_1 [0]),
    .X(\ff_2_write/_04_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_13_  (.A(rrst_n),
    .B(\ff_2_write/ff_1 [1]),
    .X(\ff_2_write/_05_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_14_  (.A(rrst_n),
    .B(\ff_2_write/ff_1 [2]),
    .X(\ff_2_write/_06_ ));
 sky130_fd_sc_hd__and2_0 \ff_2_write/_15_  (.A(rrst_n),
    .B(\ff_2_write/ff_1 [3]),
    .X(\ff_2_write/_07_ ));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_16_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_00_ ),
    .Q(\ff_2_write/ff_1 [0]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_17_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_01_ ),
    .Q(\ff_2_write/ff_1 [1]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_18_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_02_ ),
    .Q(\ff_2_write/ff_1 [2]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_19_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_03_ ),
    .Q(\ff_2_write/ff_1 [3]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_20_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_04_ ),
    .Q(wtr_g_ptr_ff[0]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_21_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_05_ ),
    .Q(wtr_g_ptr_ff[1]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_22_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_06_ ),
    .Q(wtr_g_ptr_ff[2]));
 sky130_fd_sc_hd__dfxtp_1 \ff_2_write/_23_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\ff_2_write/_07_ ),
    .Q(wtr_g_ptr_ff[3]));
 sky130_fd_sc_hd__and4b_4 \memory/_0438_  (.A_N(full),
    .B(wtr_en),
    .C(wrst_n),
    .D(wtr_b_ptr[0]),
    .X(\memory/_0296_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0439_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .C(\memory/_0296_ ),
    .X(\memory/_0297_ ));
 sky130_fd_sc_hd__nand2b_4 \memory/_0440_  (.A_N(\memory/_0297_ ),
    .B(wrst_n),
    .Y(\memory/_0000_ ));
 sky130_fd_sc_hd__nor2_4 \memory/_0441_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .Y(\memory/_0298_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0442_  (.A(\memory/_0296_ ),
    .B(net23),
    .Y(\memory/_0299_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0443_  (.A(wrst_n),
    .B(\memory/_0299_ ),
    .Y(\memory/_0006_ ));
 sky130_fd_sc_hd__nor4bb_4 \memory/_0444_  (.A(wtr_b_ptr[0]),
    .B(full),
    .C_N(wtr_en),
    .D_N(wrst_n),
    .Y(\memory/_0300_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0445_  (.A(net24),
    .B(net17),
    .Y(\memory/_0301_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0446_  (.A(wrst_n),
    .B(\memory/_0301_ ),
    .Y(\memory/_0007_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0447_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .C(\memory/_0300_ ),
    .X(\memory/_0302_ ));
 sky130_fd_sc_hd__nand2b_4 \memory/_0448_  (.A_N(\memory/_0302_ ),
    .B(wrst_n),
    .Y(\memory/_0001_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_8 \memory/_0449_  (.A(wtr_b_ptr[2]),
    .SLEEP(wtr_b_ptr[1]),
    .X(\memory/_0303_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0450_  (.A(\memory/_0296_ ),
    .B(\memory/_0303_ ),
    .Y(\memory/_0304_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0451_  (.A(wrst_n),
    .B(\memory/_0304_ ),
    .Y(\memory/_0002_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0452_  (.A(\memory/_0300_ ),
    .B(\memory/_0303_ ),
    .Y(\memory/_0305_ ));
 sky130_fd_sc_hd__nand2_4 \memory/_0453_  (.A(wrst_n),
    .B(\memory/_0305_ ),
    .Y(\memory/_0003_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_8 \memory/_0454_  (.A(wtr_b_ptr[1]),
    .SLEEP(wtr_b_ptr[2]),
    .X(\memory/_0306_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0455_  (.A(\memory/_0296_ ),
    .B(net20),
    .Y(\memory/_0307_ ));
 sky130_fd_sc_hd__nand2_4 \memory/_0456_  (.A(wrst_n),
    .B(\memory/_0307_ ),
    .Y(\memory/_0004_ ));
 sky130_fd_sc_hd__nand2_1 \memory/_0457_  (.A(net17),
    .B(\memory/_0306_ ),
    .Y(\memory/_0308_ ));
 sky130_fd_sc_hd__nand2_4 \memory/_0458_  (.A(wrst_n),
    .B(\memory/_0308_ ),
    .Y(\memory/_0005_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0459_  (.A(data_in[20]),
    .B(\memory/_0302_ ),
    .X(\memory/_0008_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0460_  (.A(data_in[21]),
    .B(\memory/_0302_ ),
    .X(\memory/_0009_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0461_  (.A(data_in[22]),
    .B(\memory/_0302_ ),
    .X(\memory/_0010_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0462_  (.A(data_in[23]),
    .B(\memory/_0302_ ),
    .X(\memory/_0011_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0463_  (.A(data_in[24]),
    .B(\memory/_0302_ ),
    .X(\memory/_0012_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0464_  (.A(data_in[25]),
    .B(\memory/_0302_ ),
    .X(\memory/_0013_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0465_  (.A(data_in[26]),
    .B(\memory/_0302_ ),
    .X(\memory/_0014_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0466_  (.A(data_in[27]),
    .B(\memory/_0302_ ),
    .X(\memory/_0015_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0467_  (.A(data_in[28]),
    .B(\memory/_0302_ ),
    .X(\memory/_0016_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0468_  (.A(data_in[29]),
    .B(\memory/_0302_ ),
    .X(\memory/_0017_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0469_  (.A(data_in[30]),
    .B(\memory/_0302_ ),
    .X(\memory/_0018_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0470_  (.A(data_in[31]),
    .B(\memory/_0302_ ),
    .X(\memory/_0019_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0471_  (.A(data_in[0]),
    .B(net22),
    .C(net11),
    .X(\memory/_0020_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0472_  (.A(data_in[1]),
    .B(net22),
    .C(net13),
    .X(\memory/_0021_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0473_  (.A(data_in[2]),
    .B(net23),
    .C(net16),
    .X(\memory/_0022_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0474_  (.A(data_in[3]),
    .B(net24),
    .C(\memory/_0300_ ),
    .X(\memory/_0023_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0475_  (.A(data_in[4]),
    .B(net23),
    .C(net15),
    .X(\memory/_0024_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0476_  (.A(data_in[5]),
    .B(\memory/_0298_ ),
    .C(net14),
    .X(\memory/_0025_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0477_  (.A(data_in[6]),
    .B(net22),
    .C(net13),
    .X(\memory/_0026_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0478_  (.A(data_in[7]),
    .B(\memory/_0298_ ),
    .C(net18),
    .X(\memory/_0027_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0479_  (.A(data_in[8]),
    .B(net23),
    .C(net15),
    .X(\memory/_0028_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0480_  (.A(data_in[9]),
    .B(net22),
    .C(net11),
    .X(\memory/_0029_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0481_  (.A(data_in[10]),
    .B(\memory/_0298_ ),
    .C(net18),
    .X(\memory/_0030_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0482_  (.A(data_in[11]),
    .B(net22),
    .C(net12),
    .X(\memory/_0031_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0483_  (.A(data_in[12]),
    .B(net24),
    .C(net12),
    .X(\memory/_0032_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0484_  (.A(data_in[13]),
    .B(net23),
    .C(net15),
    .X(\memory/_0033_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0485_  (.A(data_in[14]),
    .B(net22),
    .C(net11),
    .X(\memory/_0034_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0486_  (.A(data_in[15]),
    .B(\memory/_0298_ ),
    .C(net14),
    .X(\memory/_0035_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0487_  (.A(data_in[16]),
    .B(net23),
    .C(net15),
    .X(\memory/_0036_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0488_  (.A(data_in[17]),
    .B(net22),
    .C(net12),
    .X(\memory/_0037_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0489_  (.A(data_in[18]),
    .B(\memory/_0298_ ),
    .C(net14),
    .X(\memory/_0038_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0490_  (.A(data_in[19]),
    .B(net24),
    .C(net16),
    .X(\memory/_0039_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0491_  (.A(data_in[20]),
    .B(net22),
    .C(net13),
    .X(\memory/_0040_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0492_  (.A(data_in[21]),
    .B(net23),
    .C(net15),
    .X(\memory/_0041_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0493_  (.A(data_in[22]),
    .B(net22),
    .C(net12),
    .X(\memory/_0042_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0494_  (.A(data_in[23]),
    .B(net22),
    .C(net13),
    .X(\memory/_0043_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0495_  (.A(data_in[24]),
    .B(net24),
    .C(net16),
    .X(\memory/_0044_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0496_  (.A(data_in[25]),
    .B(net23),
    .C(net17),
    .X(\memory/_0045_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0497_  (.A(data_in[26]),
    .B(net23),
    .C(net15),
    .X(\memory/_0046_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0498_  (.A(data_in[27]),
    .B(net22),
    .C(net12),
    .X(\memory/_0047_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0499_  (.A(data_in[28]),
    .B(net23),
    .C(net17),
    .X(\memory/_0048_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0500_  (.A(data_in[29]),
    .B(net24),
    .C(\memory/_0300_ ),
    .X(\memory/_0049_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0501_  (.A(data_in[30]),
    .B(\memory/_0298_ ),
    .C(net14),
    .X(\memory/_0050_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0502_  (.A(data_in[31]),
    .B(net24),
    .C(net16),
    .X(\memory/_0051_ ));
 sky130_fd_sc_hd__lpflow_isobufsrc_8 \memory/_0503_  (.A(rd_en),
    .SLEEP(empty),
    .X(\memory/_0309_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0504_  (.A0(\memory/mem[4] [0]),
    .A1(\memory/mem[5] [0]),
    .A2(\memory/mem[6] [0]),
    .A3(\memory/mem[7] [0]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0310_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0505_  (.A0(\memory/mem[0] [0]),
    .A1(\memory/mem[1] [0]),
    .A2(\memory/mem[2] [0]),
    .A3(\memory/mem[3] [0]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0311_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0506_  (.A0(\memory/_0311_ ),
    .A1(\memory/_0310_ ),
    .S(net25),
    .Y(\memory/_0312_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0507_  (.A1(data_out[0]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0313_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0508_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0312_ ),
    .B1(\memory/_0313_ ),
    .Y(\memory/_0052_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0509_  (.A0(\memory/mem[4] [1]),
    .A1(\memory/mem[5] [1]),
    .A2(\memory/mem[6] [1]),
    .A3(\memory/mem[7] [1]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0314_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0510_  (.A0(\memory/mem[0] [1]),
    .A1(\memory/mem[1] [1]),
    .A2(\memory/mem[2] [1]),
    .A3(\memory/mem[3] [1]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0315_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0511_  (.A0(\memory/_0315_ ),
    .A1(\memory/_0314_ ),
    .S(net25),
    .Y(\memory/_0316_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0512_  (.A1(data_out[1]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0317_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0513_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0316_ ),
    .B1(\memory/_0317_ ),
    .Y(\memory/_0053_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0514_  (.A0(\memory/mem[4] [2]),
    .A1(\memory/mem[5] [2]),
    .A2(\memory/mem[6] [2]),
    .A3(\memory/mem[7] [2]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0318_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0515_  (.A0(\memory/mem[0] [2]),
    .A1(\memory/mem[1] [2]),
    .A2(\memory/mem[2] [2]),
    .A3(\memory/mem[3] [2]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0319_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0516_  (.A0(\memory/_0319_ ),
    .A1(\memory/_0318_ ),
    .S(net25),
    .Y(\memory/_0320_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0517_  (.A1(data_out[2]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0321_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0518_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0320_ ),
    .B1(\memory/_0321_ ),
    .Y(\memory/_0054_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0519_  (.A0(\memory/mem[4] [3]),
    .A1(\memory/mem[5] [3]),
    .A2(\memory/mem[6] [3]),
    .A3(\memory/mem[7] [3]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0322_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0520_  (.A0(\memory/mem[0] [3]),
    .A1(\memory/mem[1] [3]),
    .A2(\memory/mem[2] [3]),
    .A3(\memory/mem[3] [3]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0323_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0521_  (.A0(\memory/_0323_ ),
    .A1(\memory/_0322_ ),
    .S(net25),
    .Y(\memory/_0324_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0522_  (.A1(data_out[3]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0325_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0523_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0324_ ),
    .B1(\memory/_0325_ ),
    .Y(\memory/_0055_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0524_  (.A0(\memory/mem[4] [4]),
    .A1(\memory/mem[5] [4]),
    .A2(\memory/mem[6] [4]),
    .A3(\memory/mem[7] [4]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0326_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0525_  (.A0(\memory/mem[0] [4]),
    .A1(\memory/mem[1] [4]),
    .A2(\memory/mem[2] [4]),
    .A3(\memory/mem[3] [4]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0327_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0526_  (.A0(\memory/_0327_ ),
    .A1(\memory/_0326_ ),
    .S(net25),
    .Y(\memory/_0328_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0527_  (.A1(data_out[4]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0329_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0528_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0328_ ),
    .B1(\memory/_0329_ ),
    .Y(\memory/_0056_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0529_  (.A0(\memory/mem[4] [5]),
    .A1(\memory/mem[5] [5]),
    .A2(\memory/mem[6] [5]),
    .A3(\memory/mem[7] [5]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0330_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0530_  (.A0(\memory/mem[0] [5]),
    .A1(\memory/mem[1] [5]),
    .A2(\memory/mem[2] [5]),
    .A3(\memory/mem[3] [5]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0331_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0531_  (.A0(\memory/_0331_ ),
    .A1(\memory/_0330_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0332_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0532_  (.A1(data_out[5]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0333_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0533_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0332_ ),
    .B1(\memory/_0333_ ),
    .Y(\memory/_0057_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0534_  (.A0(\memory/mem[4] [6]),
    .A1(\memory/mem[5] [6]),
    .A2(\memory/mem[6] [6]),
    .A3(\memory/mem[7] [6]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0334_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0535_  (.A0(\memory/mem[0] [6]),
    .A1(\memory/mem[1] [6]),
    .A2(\memory/mem[2] [6]),
    .A3(\memory/mem[3] [6]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0335_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0536_  (.A0(\memory/_0335_ ),
    .A1(\memory/_0334_ ),
    .S(net25),
    .Y(\memory/_0336_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0537_  (.A1(data_out[6]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0337_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0538_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0336_ ),
    .B1(\memory/_0337_ ),
    .Y(\memory/_0058_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0539_  (.A0(\memory/mem[4] [7]),
    .A1(\memory/mem[5] [7]),
    .A2(\memory/mem[6] [7]),
    .A3(\memory/mem[7] [7]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0338_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0540_  (.A0(\memory/mem[0] [7]),
    .A1(\memory/mem[1] [7]),
    .A2(\memory/mem[2] [7]),
    .A3(\memory/mem[3] [7]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0339_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0541_  (.A0(\memory/_0339_ ),
    .A1(\memory/_0338_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0340_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0542_  (.A1(data_out[7]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0341_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0543_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0340_ ),
    .B1(\memory/_0341_ ),
    .Y(\memory/_0059_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0544_  (.A0(\memory/mem[4] [8]),
    .A1(\memory/mem[5] [8]),
    .A2(\memory/mem[6] [8]),
    .A3(\memory/mem[7] [8]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0342_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0545_  (.A0(\memory/mem[0] [8]),
    .A1(\memory/mem[1] [8]),
    .A2(\memory/mem[2] [8]),
    .A3(\memory/mem[3] [8]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0343_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0546_  (.A0(\memory/_0343_ ),
    .A1(\memory/_0342_ ),
    .S(net25),
    .Y(\memory/_0344_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0547_  (.A1(data_out[8]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0345_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0548_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0344_ ),
    .B1(\memory/_0345_ ),
    .Y(\memory/_0060_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0549_  (.A0(\memory/mem[4] [9]),
    .A1(\memory/mem[5] [9]),
    .A2(\memory/mem[6] [9]),
    .A3(\memory/mem[7] [9]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0346_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0550_  (.A0(\memory/mem[0] [9]),
    .A1(\memory/mem[1] [9]),
    .A2(\memory/mem[2] [9]),
    .A3(\memory/mem[3] [9]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0347_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0551_  (.A0(\memory/_0347_ ),
    .A1(\memory/_0346_ ),
    .S(net25),
    .Y(\memory/_0348_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0552_  (.A1(data_out[9]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0349_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0553_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0348_ ),
    .B1(\memory/_0349_ ),
    .Y(\memory/_0061_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0554_  (.A0(\memory/mem[4] [10]),
    .A1(\memory/mem[5] [10]),
    .A2(\memory/mem[6] [10]),
    .A3(\memory/mem[7] [10]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0350_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0555_  (.A0(\memory/mem[0] [10]),
    .A1(\memory/mem[1] [10]),
    .A2(\memory/mem[2] [10]),
    .A3(\memory/mem[3] [10]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0351_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0556_  (.A0(\memory/_0351_ ),
    .A1(\memory/_0350_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0352_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0557_  (.A1(data_out[10]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0353_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0558_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0352_ ),
    .B1(\memory/_0353_ ),
    .Y(\memory/_0062_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0559_  (.A0(\memory/mem[4] [11]),
    .A1(\memory/mem[5] [11]),
    .A2(\memory/mem[6] [11]),
    .A3(\memory/mem[7] [11]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0354_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0560_  (.A0(\memory/mem[0] [11]),
    .A1(\memory/mem[1] [11]),
    .A2(\memory/mem[2] [11]),
    .A3(\memory/mem[3] [11]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0355_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0561_  (.A0(\memory/_0355_ ),
    .A1(\memory/_0354_ ),
    .S(net25),
    .Y(\memory/_0356_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0562_  (.A1(data_out[11]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0357_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0563_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0356_ ),
    .B1(\memory/_0357_ ),
    .Y(\memory/_0063_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0564_  (.A0(\memory/mem[4] [12]),
    .A1(\memory/mem[5] [12]),
    .A2(\memory/mem[6] [12]),
    .A3(\memory/mem[7] [12]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0358_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0565_  (.A0(\memory/mem[0] [12]),
    .A1(\memory/mem[1] [12]),
    .A2(\memory/mem[2] [12]),
    .A3(\memory/mem[3] [12]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0359_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0566_  (.A0(\memory/_0359_ ),
    .A1(\memory/_0358_ ),
    .S(net25),
    .Y(\memory/_0360_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0567_  (.A1(data_out[12]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0361_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0568_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0360_ ),
    .B1(\memory/_0361_ ),
    .Y(\memory/_0064_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0569_  (.A0(\memory/mem[4] [13]),
    .A1(\memory/mem[5] [13]),
    .A2(\memory/mem[6] [13]),
    .A3(\memory/mem[7] [13]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0362_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0570_  (.A0(\memory/mem[0] [13]),
    .A1(\memory/mem[1] [13]),
    .A2(\memory/mem[2] [13]),
    .A3(\memory/mem[3] [13]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0363_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0571_  (.A0(\memory/_0363_ ),
    .A1(\memory/_0362_ ),
    .S(net25),
    .Y(\memory/_0364_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0572_  (.A1(data_out[13]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0365_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0573_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0364_ ),
    .B1(\memory/_0365_ ),
    .Y(\memory/_0065_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0574_  (.A0(\memory/mem[4] [14]),
    .A1(\memory/mem[5] [14]),
    .A2(\memory/mem[6] [14]),
    .A3(\memory/mem[7] [14]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0366_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0575_  (.A0(\memory/mem[0] [14]),
    .A1(\memory/mem[1] [14]),
    .A2(\memory/mem[2] [14]),
    .A3(\memory/mem[3] [14]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0367_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0576_  (.A0(\memory/_0367_ ),
    .A1(\memory/_0366_ ),
    .S(net25),
    .Y(\memory/_0368_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0577_  (.A1(data_out[14]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0369_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0578_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0368_ ),
    .B1(\memory/_0369_ ),
    .Y(\memory/_0066_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0579_  (.A0(\memory/mem[4] [15]),
    .A1(\memory/mem[5] [15]),
    .A2(\memory/mem[6] [15]),
    .A3(\memory/mem[7] [15]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0370_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0580_  (.A0(\memory/mem[0] [15]),
    .A1(\memory/mem[1] [15]),
    .A2(\memory/mem[2] [15]),
    .A3(\memory/mem[3] [15]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0371_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0581_  (.A0(\memory/_0371_ ),
    .A1(\memory/_0370_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0372_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0582_  (.A1(data_out[15]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0373_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0583_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0372_ ),
    .B1(\memory/_0373_ ),
    .Y(\memory/_0067_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0584_  (.A0(\memory/mem[4] [16]),
    .A1(\memory/mem[5] [16]),
    .A2(\memory/mem[6] [16]),
    .A3(\memory/mem[7] [16]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0374_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0585_  (.A0(\memory/mem[0] [16]),
    .A1(\memory/mem[1] [16]),
    .A2(\memory/mem[2] [16]),
    .A3(\memory/mem[3] [16]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0375_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0586_  (.A0(\memory/_0375_ ),
    .A1(\memory/_0374_ ),
    .S(net25),
    .Y(\memory/_0376_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0587_  (.A1(data_out[16]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0377_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0588_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0376_ ),
    .B1(\memory/_0377_ ),
    .Y(\memory/_0068_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0589_  (.A0(\memory/mem[4] [17]),
    .A1(\memory/mem[5] [17]),
    .A2(\memory/mem[6] [17]),
    .A3(\memory/mem[7] [17]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0378_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0590_  (.A0(\memory/mem[0] [17]),
    .A1(\memory/mem[1] [17]),
    .A2(\memory/mem[2] [17]),
    .A3(\memory/mem[3] [17]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0379_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0591_  (.A0(\memory/_0379_ ),
    .A1(\memory/_0378_ ),
    .S(net25),
    .Y(\memory/_0380_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0592_  (.A1(data_out[17]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0381_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0593_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0380_ ),
    .B1(\memory/_0381_ ),
    .Y(\memory/_0069_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0594_  (.A0(\memory/mem[4] [18]),
    .A1(\memory/mem[5] [18]),
    .A2(\memory/mem[6] [18]),
    .A3(\memory/mem[7] [18]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0382_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0595_  (.A0(\memory/mem[0] [18]),
    .A1(\memory/mem[1] [18]),
    .A2(\memory/mem[2] [18]),
    .A3(\memory/mem[3] [18]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0383_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0596_  (.A0(\memory/_0383_ ),
    .A1(\memory/_0382_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0384_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0597_  (.A1(data_out[18]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0385_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0598_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0384_ ),
    .B1(\memory/_0385_ ),
    .Y(\memory/_0070_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0599_  (.A0(\memory/mem[4] [19]),
    .A1(\memory/mem[5] [19]),
    .A2(\memory/mem[6] [19]),
    .A3(\memory/mem[7] [19]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0386_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0600_  (.A0(\memory/mem[0] [19]),
    .A1(\memory/mem[1] [19]),
    .A2(\memory/mem[2] [19]),
    .A3(\memory/mem[3] [19]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0387_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0601_  (.A0(\memory/_0387_ ),
    .A1(\memory/_0386_ ),
    .S(net25),
    .Y(\memory/_0388_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0602_  (.A1(data_out[19]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0389_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0603_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0388_ ),
    .B1(\memory/_0389_ ),
    .Y(\memory/_0071_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0604_  (.A0(\memory/mem[4] [20]),
    .A1(\memory/mem[5] [20]),
    .A2(\memory/mem[6] [20]),
    .A3(\memory/mem[7] [20]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0390_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0605_  (.A0(\memory/mem[0] [20]),
    .A1(\memory/mem[1] [20]),
    .A2(\memory/mem[2] [20]),
    .A3(\memory/mem[3] [20]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0391_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0606_  (.A0(\memory/_0391_ ),
    .A1(\memory/_0390_ ),
    .S(net25),
    .Y(\memory/_0392_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0607_  (.A1(data_out[20]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0393_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0608_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0392_ ),
    .B1(\memory/_0393_ ),
    .Y(\memory/_0072_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0609_  (.A0(\memory/mem[4] [21]),
    .A1(\memory/mem[5] [21]),
    .A2(\memory/mem[6] [21]),
    .A3(\memory/mem[7] [21]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0394_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0610_  (.A0(\memory/mem[0] [21]),
    .A1(\memory/mem[1] [21]),
    .A2(\memory/mem[2] [21]),
    .A3(\memory/mem[3] [21]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0395_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0611_  (.A0(\memory/_0395_ ),
    .A1(\memory/_0394_ ),
    .S(net25),
    .Y(\memory/_0396_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0612_  (.A1(data_out[21]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0397_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0613_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0396_ ),
    .B1(\memory/_0397_ ),
    .Y(\memory/_0073_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0614_  (.A0(\memory/mem[4] [22]),
    .A1(\memory/mem[5] [22]),
    .A2(\memory/mem[6] [22]),
    .A3(\memory/mem[7] [22]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0398_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0615_  (.A0(\memory/mem[0] [22]),
    .A1(\memory/mem[1] [22]),
    .A2(\memory/mem[2] [22]),
    .A3(\memory/mem[3] [22]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0399_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0616_  (.A0(\memory/_0399_ ),
    .A1(\memory/_0398_ ),
    .S(net25),
    .Y(\memory/_0400_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0617_  (.A1(data_out[22]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0401_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0618_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0400_ ),
    .B1(\memory/_0401_ ),
    .Y(\memory/_0074_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0619_  (.A0(\memory/mem[4] [23]),
    .A1(\memory/mem[5] [23]),
    .A2(\memory/mem[6] [23]),
    .A3(\memory/mem[7] [23]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0402_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0620_  (.A0(\memory/mem[0] [23]),
    .A1(\memory/mem[1] [23]),
    .A2(\memory/mem[2] [23]),
    .A3(\memory/mem[3] [23]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0403_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0621_  (.A0(\memory/_0403_ ),
    .A1(\memory/_0402_ ),
    .S(net25),
    .Y(\memory/_0404_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0622_  (.A1(data_out[23]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0405_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0623_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0404_ ),
    .B1(\memory/_0405_ ),
    .Y(\memory/_0075_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0624_  (.A0(\memory/mem[4] [24]),
    .A1(\memory/mem[5] [24]),
    .A2(\memory/mem[6] [24]),
    .A3(\memory/mem[7] [24]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0406_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0625_  (.A0(\memory/mem[0] [24]),
    .A1(\memory/mem[1] [24]),
    .A2(\memory/mem[2] [24]),
    .A3(\memory/mem[3] [24]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0407_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0626_  (.A0(\memory/_0407_ ),
    .A1(\memory/_0406_ ),
    .S(net25),
    .Y(\memory/_0408_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0627_  (.A1(data_out[24]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0409_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0628_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0408_ ),
    .B1(\memory/_0409_ ),
    .Y(\memory/_0076_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0629_  (.A0(\memory/mem[4] [25]),
    .A1(\memory/mem[5] [25]),
    .A2(\memory/mem[6] [25]),
    .A3(\memory/mem[7] [25]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0410_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0630_  (.A0(\memory/mem[0] [25]),
    .A1(\memory/mem[1] [25]),
    .A2(\memory/mem[2] [25]),
    .A3(\memory/mem[3] [25]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0411_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0631_  (.A0(\memory/_0411_ ),
    .A1(\memory/_0410_ ),
    .S(net25),
    .Y(\memory/_0412_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0632_  (.A1(data_out[25]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0413_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0633_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0412_ ),
    .B1(\memory/_0413_ ),
    .Y(\memory/_0077_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0634_  (.A0(\memory/mem[4] [26]),
    .A1(\memory/mem[5] [26]),
    .A2(\memory/mem[6] [26]),
    .A3(\memory/mem[7] [26]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0414_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0635_  (.A0(\memory/mem[0] [26]),
    .A1(\memory/mem[1] [26]),
    .A2(\memory/mem[2] [26]),
    .A3(\memory/mem[3] [26]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0415_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0636_  (.A0(\memory/_0415_ ),
    .A1(\memory/_0414_ ),
    .S(net25),
    .Y(\memory/_0416_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0637_  (.A1(data_out[26]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0417_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0638_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0416_ ),
    .B1(\memory/_0417_ ),
    .Y(\memory/_0078_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0639_  (.A0(\memory/mem[4] [27]),
    .A1(\memory/mem[5] [27]),
    .A2(\memory/mem[6] [27]),
    .A3(\memory/mem[7] [27]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0418_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0640_  (.A0(\memory/mem[0] [27]),
    .A1(\memory/mem[1] [27]),
    .A2(\memory/mem[2] [27]),
    .A3(\memory/mem[3] [27]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0419_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0641_  (.A0(\memory/_0419_ ),
    .A1(\memory/_0418_ ),
    .S(net25),
    .Y(\memory/_0420_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0642_  (.A1(data_out[27]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0421_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0643_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0420_ ),
    .B1(\memory/_0421_ ),
    .Y(\memory/_0079_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0644_  (.A0(\memory/mem[4] [28]),
    .A1(\memory/mem[5] [28]),
    .A2(\memory/mem[6] [28]),
    .A3(\memory/mem[7] [28]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0422_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0645_  (.A0(\memory/mem[0] [28]),
    .A1(\memory/mem[1] [28]),
    .A2(\memory/mem[2] [28]),
    .A3(\memory/mem[3] [28]),
    .S0(net28),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0423_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0646_  (.A0(\memory/_0423_ ),
    .A1(\memory/_0422_ ),
    .S(net25),
    .Y(\memory/_0424_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0647_  (.A1(data_out[28]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0425_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0648_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0424_ ),
    .B1(\memory/_0425_ ),
    .Y(\memory/_0080_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0649_  (.A0(\memory/mem[4] [29]),
    .A1(\memory/mem[5] [29]),
    .A2(\memory/mem[6] [29]),
    .A3(\memory/mem[7] [29]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0426_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0650_  (.A0(\memory/mem[0] [29]),
    .A1(\memory/mem[1] [29]),
    .A2(\memory/mem[2] [29]),
    .A3(\memory/mem[3] [29]),
    .S0(net28),
    .S1(net26),
    .X(\memory/_0427_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0651_  (.A0(\memory/_0427_ ),
    .A1(\memory/_0426_ ),
    .S(net25),
    .Y(\memory/_0428_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0652_  (.A1(data_out[29]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0429_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0653_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0428_ ),
    .B1(\memory/_0429_ ),
    .Y(\memory/_0081_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0654_  (.A0(\memory/mem[4] [30]),
    .A1(\memory/mem[5] [30]),
    .A2(\memory/mem[6] [30]),
    .A3(\memory/mem[7] [30]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0430_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0655_  (.A0(\memory/mem[0] [30]),
    .A1(\memory/mem[1] [30]),
    .A2(\memory/mem[2] [30]),
    .A3(\memory/mem[3] [30]),
    .S0(rd_b_ptr[0]),
    .S1(rd_b_ptr[1]),
    .X(\memory/_0431_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0656_  (.A0(\memory/_0431_ ),
    .A1(\memory/_0430_ ),
    .S(rd_b_ptr[2]),
    .Y(\memory/_0432_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0657_  (.A1(data_out[30]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0433_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0658_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0432_ ),
    .B1(\memory/_0433_ ),
    .Y(\memory/_0082_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0659_  (.A0(\memory/mem[4] [31]),
    .A1(\memory/mem[5] [31]),
    .A2(\memory/mem[6] [31]),
    .A3(\memory/mem[7] [31]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0434_ ));
 sky130_fd_sc_hd__mux4_2 \memory/_0660_  (.A0(\memory/mem[0] [31]),
    .A1(\memory/mem[1] [31]),
    .A2(\memory/mem[2] [31]),
    .A3(\memory/mem[3] [31]),
    .S0(net27),
    .S1(net26),
    .X(\memory/_0435_ ));
 sky130_fd_sc_hd__mux2i_1 \memory/_0661_  (.A0(\memory/_0435_ ),
    .A1(\memory/_0434_ ),
    .S(net25),
    .Y(\memory/_0436_ ));
 sky130_fd_sc_hd__o21ai_0 \memory/_0662_  (.A1(data_out[31]),
    .A2(\memory/_0309_ ),
    .B1(rrst_n),
    .Y(\memory/_0437_ ));
 sky130_fd_sc_hd__a21oi_1 \memory/_0663_  (.A1(\memory/_0309_ ),
    .A2(\memory/_0436_ ),
    .B1(\memory/_0437_ ),
    .Y(\memory/_0083_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0664_  (.A(data_in[0]),
    .B(net19),
    .C(net21),
    .X(\memory/_0084_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0665_  (.A(data_in[1]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0085_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0666_  (.A(data_in[2]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0086_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0667_  (.A(data_in[3]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0087_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0668_  (.A(data_in[4]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0088_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0669_  (.A(data_in[5]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0089_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0670_  (.A(data_in[6]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0090_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0671_  (.A(data_in[7]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0091_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0672_  (.A(data_in[8]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0092_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0673_  (.A(data_in[9]),
    .B(net19),
    .C(net21),
    .X(\memory/_0093_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0674_  (.A(data_in[10]),
    .B(\memory/_0296_ ),
    .C(\memory/_0303_ ),
    .X(\memory/_0094_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0675_  (.A(data_in[11]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0095_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0676_  (.A(data_in[12]),
    .B(net19),
    .C(net21),
    .X(\memory/_0096_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0677_  (.A(data_in[13]),
    .B(net19),
    .C(net21),
    .X(\memory/_0097_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0678_  (.A(data_in[14]),
    .B(net19),
    .C(net21),
    .X(\memory/_0098_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0679_  (.A(data_in[15]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0099_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0680_  (.A(data_in[16]),
    .B(net19),
    .C(net21),
    .X(\memory/_0100_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0681_  (.A(data_in[17]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0101_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0682_  (.A(data_in[18]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0102_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0683_  (.A(data_in[19]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0103_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0684_  (.A(data_in[20]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0104_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0685_  (.A(data_in[21]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0105_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0686_  (.A(data_in[22]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0106_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0687_  (.A(data_in[23]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0107_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0688_  (.A(data_in[24]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0108_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0689_  (.A(data_in[25]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0109_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0690_  (.A(data_in[26]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0110_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0691_  (.A(data_in[27]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0111_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0692_  (.A(data_in[28]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0112_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0693_  (.A(data_in[29]),
    .B(\memory/_0296_ ),
    .C(\memory/_0303_ ),
    .X(\memory/_0113_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0694_  (.A(data_in[30]),
    .B(net19),
    .C(\memory/_0303_ ),
    .X(\memory/_0114_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0695_  (.A(data_in[31]),
    .B(\memory/_0296_ ),
    .C(net21),
    .X(\memory/_0115_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0696_  (.A(data_in[0]),
    .B(\memory/_0297_ ),
    .X(\memory/_0116_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0697_  (.A(data_in[1]),
    .B(\memory/_0297_ ),
    .X(\memory/_0117_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0698_  (.A(data_in[2]),
    .B(\memory/_0297_ ),
    .X(\memory/_0118_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0699_  (.A(data_in[3]),
    .B(\memory/_0297_ ),
    .X(\memory/_0119_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0700_  (.A(data_in[4]),
    .B(\memory/_0297_ ),
    .X(\memory/_0120_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0701_  (.A(data_in[5]),
    .B(\memory/_0297_ ),
    .X(\memory/_0121_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0702_  (.A(data_in[6]),
    .B(\memory/_0297_ ),
    .X(\memory/_0122_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0703_  (.A(data_in[7]),
    .B(\memory/_0297_ ),
    .X(\memory/_0123_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0704_  (.A(data_in[8]),
    .B(\memory/_0297_ ),
    .X(\memory/_0124_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0705_  (.A(data_in[9]),
    .B(\memory/_0297_ ),
    .X(\memory/_0125_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0706_  (.A(data_in[10]),
    .B(\memory/_0297_ ),
    .X(\memory/_0126_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0707_  (.A(data_in[11]),
    .B(\memory/_0297_ ),
    .X(\memory/_0127_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0708_  (.A(data_in[12]),
    .B(\memory/_0297_ ),
    .X(\memory/_0128_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0709_  (.A(data_in[13]),
    .B(\memory/_0297_ ),
    .X(\memory/_0129_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0710_  (.A(data_in[14]),
    .B(\memory/_0297_ ),
    .X(\memory/_0130_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0711_  (.A(data_in[15]),
    .B(\memory/_0297_ ),
    .X(\memory/_0131_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0712_  (.A(data_in[16]),
    .B(\memory/_0297_ ),
    .X(\memory/_0132_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0713_  (.A(data_in[17]),
    .B(\memory/_0297_ ),
    .X(\memory/_0133_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0714_  (.A(data_in[18]),
    .B(\memory/_0297_ ),
    .X(\memory/_0134_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0715_  (.A(data_in[19]),
    .B(\memory/_0297_ ),
    .X(\memory/_0135_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0716_  (.A(data_in[20]),
    .B(\memory/_0297_ ),
    .X(\memory/_0136_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0717_  (.A(data_in[21]),
    .B(\memory/_0297_ ),
    .X(\memory/_0137_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0718_  (.A(data_in[22]),
    .B(\memory/_0297_ ),
    .X(\memory/_0138_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0719_  (.A(data_in[23]),
    .B(\memory/_0297_ ),
    .X(\memory/_0139_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0720_  (.A(data_in[24]),
    .B(\memory/_0297_ ),
    .X(\memory/_0140_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0721_  (.A(data_in[25]),
    .B(\memory/_0297_ ),
    .X(\memory/_0141_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0722_  (.A(data_in[26]),
    .B(\memory/_0297_ ),
    .X(\memory/_0142_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0723_  (.A(data_in[27]),
    .B(\memory/_0297_ ),
    .X(\memory/_0143_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0724_  (.A(data_in[28]),
    .B(\memory/_0297_ ),
    .X(\memory/_0144_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0725_  (.A(data_in[29]),
    .B(\memory/_0297_ ),
    .X(\memory/_0145_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0726_  (.A(data_in[30]),
    .B(\memory/_0297_ ),
    .X(\memory/_0146_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0727_  (.A(data_in[31]),
    .B(\memory/_0297_ ),
    .X(\memory/_0147_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0728_  (.A(data_in[0]),
    .B(net11),
    .C(\memory/_0306_ ),
    .X(\memory/_0148_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0729_  (.A(data_in[1]),
    .B(net13),
    .C(net20),
    .X(\memory/_0149_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0730_  (.A(data_in[2]),
    .B(net17),
    .C(\memory/_0306_ ),
    .X(\memory/_0150_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0731_  (.A(data_in[3]),
    .B(\memory/_0300_ ),
    .C(net20),
    .X(\memory/_0151_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0732_  (.A(data_in[4]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0152_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0733_  (.A(data_in[5]),
    .B(net14),
    .C(\memory/_0306_ ),
    .X(\memory/_0153_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0734_  (.A(data_in[6]),
    .B(net13),
    .C(net20),
    .X(\memory/_0154_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0735_  (.A(data_in[7]),
    .B(net14),
    .C(\memory/_0306_ ),
    .X(\memory/_0155_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0736_  (.A(data_in[8]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0156_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0737_  (.A(data_in[9]),
    .B(net11),
    .C(net20),
    .X(\memory/_0157_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0738_  (.A(data_in[10]),
    .B(net18),
    .C(\memory/_0306_ ),
    .X(\memory/_0158_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0739_  (.A(data_in[11]),
    .B(net12),
    .C(net20),
    .X(\memory/_0159_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0740_  (.A(data_in[12]),
    .B(net12),
    .C(net20),
    .X(\memory/_0160_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0741_  (.A(data_in[13]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0161_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0742_  (.A(data_in[14]),
    .B(net11),
    .C(\memory/_0306_ ),
    .X(\memory/_0162_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0743_  (.A(data_in[15]),
    .B(net14),
    .C(\memory/_0306_ ),
    .X(\memory/_0163_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0744_  (.A(data_in[16]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0164_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0745_  (.A(data_in[17]),
    .B(net12),
    .C(net20),
    .X(\memory/_0165_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0746_  (.A(data_in[18]),
    .B(net14),
    .C(\memory/_0306_ ),
    .X(\memory/_0166_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0747_  (.A(data_in[19]),
    .B(net16),
    .C(net20),
    .X(\memory/_0167_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0748_  (.A(data_in[20]),
    .B(net13),
    .C(\memory/_0306_ ),
    .X(\memory/_0168_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0749_  (.A(data_in[21]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0169_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0750_  (.A(data_in[22]),
    .B(net12),
    .C(net20),
    .X(\memory/_0170_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0751_  (.A(data_in[23]),
    .B(net13),
    .C(\memory/_0306_ ),
    .X(\memory/_0171_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0752_  (.A(data_in[24]),
    .B(net16),
    .C(net20),
    .X(\memory/_0172_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0753_  (.A(data_in[25]),
    .B(net17),
    .C(\memory/_0306_ ),
    .X(\memory/_0173_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0754_  (.A(data_in[26]),
    .B(net15),
    .C(\memory/_0306_ ),
    .X(\memory/_0174_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0755_  (.A(data_in[27]),
    .B(net12),
    .C(net20),
    .X(\memory/_0175_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0756_  (.A(data_in[28]),
    .B(net17),
    .C(\memory/_0306_ ),
    .X(\memory/_0176_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0757_  (.A(data_in[29]),
    .B(\memory/_0300_ ),
    .C(net20),
    .X(\memory/_0177_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0758_  (.A(data_in[30]),
    .B(net14),
    .C(\memory/_0306_ ),
    .X(\memory/_0178_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0759_  (.A(data_in[31]),
    .B(net16),
    .C(net20),
    .X(\memory/_0179_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0760_  (.A(data_in[0]),
    .B(net11),
    .C(net21),
    .X(\memory/_0180_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0761_  (.A(data_in[1]),
    .B(net18),
    .C(\memory/_0303_ ),
    .X(\memory/_0181_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0762_  (.A(data_in[2]),
    .B(net16),
    .C(net21),
    .X(\memory/_0182_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0763_  (.A(data_in[3]),
    .B(net18),
    .C(\memory/_0303_ ),
    .X(\memory/_0183_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0764_  (.A(data_in[4]),
    .B(net15),
    .C(net21),
    .X(\memory/_0184_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0765_  (.A(data_in[5]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0185_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0766_  (.A(data_in[6]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0186_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0767_  (.A(data_in[7]),
    .B(net18),
    .C(\memory/_0303_ ),
    .X(\memory/_0187_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0768_  (.A(data_in[8]),
    .B(net15),
    .C(net21),
    .X(\memory/_0188_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0769_  (.A(data_in[9]),
    .B(net11),
    .C(net21),
    .X(\memory/_0189_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0770_  (.A(data_in[10]),
    .B(\memory/_0300_ ),
    .C(\memory/_0303_ ),
    .X(\memory/_0190_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0771_  (.A(data_in[11]),
    .B(net12),
    .C(\memory/_0303_ ),
    .X(\memory/_0191_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0772_  (.A(data_in[12]),
    .B(net16),
    .C(net21),
    .X(\memory/_0192_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0773_  (.A(data_in[13]),
    .B(net16),
    .C(net21),
    .X(\memory/_0193_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0774_  (.A(data_in[14]),
    .B(net11),
    .C(net21),
    .X(\memory/_0194_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0775_  (.A(data_in[15]),
    .B(net14),
    .C(\memory/_0303_ ),
    .X(\memory/_0195_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0776_  (.A(data_in[16]),
    .B(net11),
    .C(net21),
    .X(\memory/_0196_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0777_  (.A(data_in[17]),
    .B(net12),
    .C(\memory/_0303_ ),
    .X(\memory/_0197_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0778_  (.A(data_in[18]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0198_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0779_  (.A(data_in[19]),
    .B(net16),
    .C(net21),
    .X(\memory/_0199_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0780_  (.A(data_in[20]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0200_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0781_  (.A(data_in[21]),
    .B(net16),
    .C(net21),
    .X(\memory/_0201_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0782_  (.A(data_in[22]),
    .B(net12),
    .C(\memory/_0303_ ),
    .X(\memory/_0202_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0783_  (.A(data_in[23]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0203_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0784_  (.A(data_in[24]),
    .B(net17),
    .C(net21),
    .X(\memory/_0204_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0785_  (.A(data_in[25]),
    .B(net17),
    .C(net21),
    .X(\memory/_0205_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0786_  (.A(data_in[26]),
    .B(net15),
    .C(net21),
    .X(\memory/_0206_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0787_  (.A(data_in[27]),
    .B(net12),
    .C(\memory/_0303_ ),
    .X(\memory/_0207_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0788_  (.A(data_in[28]),
    .B(net17),
    .C(net21),
    .X(\memory/_0208_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0789_  (.A(data_in[29]),
    .B(\memory/_0300_ ),
    .C(\memory/_0303_ ),
    .X(\memory/_0209_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0790_  (.A(data_in[30]),
    .B(net13),
    .C(\memory/_0303_ ),
    .X(\memory/_0210_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0791_  (.A(data_in[31]),
    .B(net16),
    .C(net21),
    .X(\memory/_0211_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0792_  (.A(data_in[0]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0212_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0793_  (.A(data_in[1]),
    .B(net19),
    .C(net20),
    .X(\memory/_0213_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0794_  (.A(data_in[2]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0214_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0795_  (.A(data_in[3]),
    .B(net19),
    .C(net20),
    .X(\memory/_0215_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0796_  (.A(data_in[4]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0216_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0797_  (.A(data_in[5]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0217_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0798_  (.A(data_in[6]),
    .B(net19),
    .C(net20),
    .X(\memory/_0218_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0799_  (.A(data_in[7]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0219_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0800_  (.A(data_in[8]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0220_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0801_  (.A(data_in[9]),
    .B(net19),
    .C(net20),
    .X(\memory/_0221_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0802_  (.A(data_in[10]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0222_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0803_  (.A(data_in[11]),
    .B(net19),
    .C(net20),
    .X(\memory/_0223_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0804_  (.A(data_in[12]),
    .B(net19),
    .C(net20),
    .X(\memory/_0224_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0805_  (.A(data_in[13]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0225_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0806_  (.A(data_in[14]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0226_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0807_  (.A(data_in[15]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0227_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0808_  (.A(data_in[16]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0228_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0809_  (.A(data_in[17]),
    .B(net19),
    .C(net20),
    .X(\memory/_0229_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0810_  (.A(data_in[18]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0230_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0811_  (.A(data_in[19]),
    .B(net19),
    .C(net20),
    .X(\memory/_0231_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0812_  (.A(data_in[20]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0232_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0813_  (.A(data_in[21]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0233_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0814_  (.A(data_in[22]),
    .B(net19),
    .C(net20),
    .X(\memory/_0234_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0815_  (.A(data_in[23]),
    .B(net19),
    .C(\memory/_0306_ ),
    .X(\memory/_0235_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0816_  (.A(data_in[24]),
    .B(\memory/_0296_ ),
    .C(net20),
    .X(\memory/_0236_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0817_  (.A(data_in[25]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0237_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0818_  (.A(data_in[26]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0238_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0819_  (.A(data_in[27]),
    .B(net19),
    .C(net20),
    .X(\memory/_0239_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0820_  (.A(data_in[28]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0240_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0821_  (.A(data_in[29]),
    .B(\memory/_0296_ ),
    .C(net20),
    .X(\memory/_0241_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0822_  (.A(data_in[30]),
    .B(\memory/_0296_ ),
    .C(\memory/_0306_ ),
    .X(\memory/_0242_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0823_  (.A(data_in[31]),
    .B(net19),
    .C(net20),
    .X(\memory/_0243_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0824_  (.A(data_in[0]),
    .B(net19),
    .C(net22),
    .X(\memory/_0244_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0825_  (.A(data_in[1]),
    .B(net19),
    .C(net22),
    .X(\memory/_0245_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0826_  (.A(data_in[2]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0246_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0827_  (.A(data_in[3]),
    .B(net19),
    .C(net22),
    .X(\memory/_0247_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0828_  (.A(data_in[4]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0248_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0829_  (.A(data_in[5]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0249_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0830_  (.A(data_in[6]),
    .B(net19),
    .C(net22),
    .X(\memory/_0250_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0831_  (.A(data_in[7]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0251_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0832_  (.A(data_in[8]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0252_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0833_  (.A(data_in[9]),
    .B(net19),
    .C(net22),
    .X(\memory/_0253_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0834_  (.A(data_in[10]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0254_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0835_  (.A(data_in[11]),
    .B(net19),
    .C(net22),
    .X(\memory/_0255_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0836_  (.A(data_in[12]),
    .B(net19),
    .C(net24),
    .X(\memory/_0256_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0837_  (.A(data_in[13]),
    .B(net19),
    .C(net23),
    .X(\memory/_0257_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0838_  (.A(data_in[14]),
    .B(net19),
    .C(net22),
    .X(\memory/_0258_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0839_  (.A(data_in[15]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0259_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0840_  (.A(data_in[16]),
    .B(net19),
    .C(net23),
    .X(\memory/_0260_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0841_  (.A(data_in[17]),
    .B(net19),
    .C(net22),
    .X(\memory/_0261_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0842_  (.A(data_in[18]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0262_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0843_  (.A(data_in[19]),
    .B(net19),
    .C(net24),
    .X(\memory/_0263_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0844_  (.A(data_in[20]),
    .B(net19),
    .C(net22),
    .X(\memory/_0264_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0845_  (.A(data_in[21]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0265_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0846_  (.A(data_in[22]),
    .B(net19),
    .C(net22),
    .X(\memory/_0266_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0847_  (.A(data_in[23]),
    .B(net19),
    .C(net22),
    .X(\memory/_0267_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0848_  (.A(data_in[24]),
    .B(\memory/_0296_ ),
    .C(net24),
    .X(\memory/_0268_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0849_  (.A(data_in[25]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0269_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0850_  (.A(data_in[26]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0270_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0851_  (.A(data_in[27]),
    .B(net19),
    .C(net22),
    .X(\memory/_0271_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0852_  (.A(data_in[28]),
    .B(\memory/_0296_ ),
    .C(net23),
    .X(\memory/_0272_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0853_  (.A(data_in[29]),
    .B(net19),
    .C(net24),
    .X(\memory/_0273_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0854_  (.A(data_in[30]),
    .B(\memory/_0296_ ),
    .C(\memory/_0298_ ),
    .X(\memory/_0274_ ));
 sky130_fd_sc_hd__and3_1 \memory/_0855_  (.A(data_in[31]),
    .B(net19),
    .C(net24),
    .X(\memory/_0275_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0856_  (.A(data_in[0]),
    .B(\memory/_0302_ ),
    .X(\memory/_0276_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0857_  (.A(data_in[1]),
    .B(\memory/_0302_ ),
    .X(\memory/_0277_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0858_  (.A(data_in[2]),
    .B(\memory/_0302_ ),
    .X(\memory/_0278_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0859_  (.A(data_in[3]),
    .B(\memory/_0302_ ),
    .X(\memory/_0279_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0860_  (.A(data_in[4]),
    .B(\memory/_0302_ ),
    .X(\memory/_0280_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0861_  (.A(data_in[5]),
    .B(\memory/_0302_ ),
    .X(\memory/_0281_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0862_  (.A(data_in[6]),
    .B(\memory/_0302_ ),
    .X(\memory/_0282_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0863_  (.A(data_in[7]),
    .B(\memory/_0302_ ),
    .X(\memory/_0283_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0864_  (.A(data_in[8]),
    .B(\memory/_0302_ ),
    .X(\memory/_0284_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0865_  (.A(data_in[9]),
    .B(\memory/_0302_ ),
    .X(\memory/_0285_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0866_  (.A(data_in[10]),
    .B(\memory/_0302_ ),
    .X(\memory/_0286_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0867_  (.A(data_in[11]),
    .B(\memory/_0302_ ),
    .X(\memory/_0287_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0868_  (.A(data_in[12]),
    .B(\memory/_0302_ ),
    .X(\memory/_0288_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0869_  (.A(data_in[13]),
    .B(\memory/_0302_ ),
    .X(\memory/_0289_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0870_  (.A(data_in[14]),
    .B(\memory/_0302_ ),
    .X(\memory/_0290_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0871_  (.A(data_in[15]),
    .B(\memory/_0302_ ),
    .X(\memory/_0291_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0872_  (.A(data_in[16]),
    .B(\memory/_0302_ ),
    .X(\memory/_0292_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0873_  (.A(data_in[17]),
    .B(\memory/_0302_ ),
    .X(\memory/_0293_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0874_  (.A(data_in[18]),
    .B(\memory/_0302_ ),
    .X(\memory/_0294_ ));
 sky130_fd_sc_hd__and2_0 \memory/_0875_  (.A(data_in[19]),
    .B(\memory/_0302_ ),
    .X(\memory/_0295_ ));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0876_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0008_ ),
    .DE(net3),
    .Q(\memory/mem[6] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0877_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0009_ ),
    .DE(net3),
    .Q(\memory/mem[6] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0878_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0010_ ),
    .DE(net3),
    .Q(\memory/mem[6] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0879_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0011_ ),
    .DE(net3),
    .Q(\memory/mem[6] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0880_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0012_ ),
    .DE(net3),
    .Q(\memory/mem[6] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0881_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0013_ ),
    .DE(net3),
    .Q(\memory/mem[6] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0882_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0014_ ),
    .DE(net3),
    .Q(\memory/mem[6] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0883_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0015_ ),
    .DE(net3),
    .Q(\memory/mem[6] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0884_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0016_ ),
    .DE(net3),
    .Q(\memory/mem[6] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0885_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0017_ ),
    .DE(\memory/_0001_ ),
    .Q(\memory/mem[6] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0886_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0018_ ),
    .DE(net3),
    .Q(\memory/mem[6] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0887_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0019_ ),
    .DE(net3),
    .Q(\memory/mem[6] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0888_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0020_ ),
    .DE(net4),
    .Q(\memory/mem[0] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0889_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0021_ ),
    .DE(net5),
    .Q(\memory/mem[0] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0890_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0022_ ),
    .DE(net6),
    .Q(\memory/mem[0] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0891_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0023_ ),
    .DE(net5),
    .Q(\memory/mem[0] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0892_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0024_ ),
    .DE(net6),
    .Q(\memory/mem[0] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0893_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0025_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0894_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0026_ ),
    .DE(net4),
    .Q(\memory/mem[0] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0895_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0027_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0896_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0028_ ),
    .DE(net6),
    .Q(\memory/mem[0] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0897_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0029_ ),
    .DE(net4),
    .Q(\memory/mem[0] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0898_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0030_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0899_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0031_ ),
    .DE(net4),
    .Q(\memory/mem[0] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0900_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0032_ ),
    .DE(net5),
    .Q(\memory/mem[0] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0901_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0033_ ),
    .DE(net6),
    .Q(\memory/mem[0] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0902_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0034_ ),
    .DE(net4),
    .Q(\memory/mem[0] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0903_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0035_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0904_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0036_ ),
    .DE(net6),
    .Q(\memory/mem[0] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0905_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0037_ ),
    .DE(net4),
    .Q(\memory/mem[0] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0906_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0038_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0907_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0039_ ),
    .DE(net5),
    .Q(\memory/mem[0] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0908_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0040_ ),
    .DE(net5),
    .Q(\memory/mem[0] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0909_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0041_ ),
    .DE(net6),
    .Q(\memory/mem[0] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0910_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0042_ ),
    .DE(net5),
    .Q(\memory/mem[0] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0911_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0043_ ),
    .DE(net5),
    .Q(\memory/mem[0] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0912_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0044_ ),
    .DE(net5),
    .Q(\memory/mem[0] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0913_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0045_ ),
    .DE(net6),
    .Q(\memory/mem[0] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0914_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0046_ ),
    .DE(net6),
    .Q(\memory/mem[0] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0915_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0047_ ),
    .DE(net4),
    .Q(\memory/mem[0] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0916_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0048_ ),
    .DE(net6),
    .Q(\memory/mem[0] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0917_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0049_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0918_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0050_ ),
    .DE(\memory/_0007_ ),
    .Q(\memory/mem[0] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0919_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0051_ ),
    .DE(net5),
    .Q(\memory/mem[0] [31]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0920_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0052_ ),
    .Q(data_out[0]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0921_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0053_ ),
    .Q(data_out[1]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0922_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0054_ ),
    .Q(data_out[2]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0923_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0055_ ),
    .Q(data_out[3]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0924_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0056_ ),
    .Q(data_out[4]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0925_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0057_ ),
    .Q(data_out[5]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0926_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0058_ ),
    .Q(data_out[6]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0927_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0059_ ),
    .Q(data_out[7]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0928_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0060_ ),
    .Q(data_out[8]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0929_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0061_ ),
    .Q(data_out[9]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0930_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0062_ ),
    .Q(data_out[10]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0931_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0063_ ),
    .Q(data_out[11]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0932_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0064_ ),
    .Q(data_out[12]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0933_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0065_ ),
    .Q(data_out[13]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0934_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0066_ ),
    .Q(data_out[14]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0935_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0067_ ),
    .Q(data_out[15]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0936_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0068_ ),
    .Q(data_out[16]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0937_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0069_ ),
    .Q(data_out[17]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0938_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0070_ ),
    .Q(data_out[18]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0939_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0071_ ),
    .Q(data_out[19]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0940_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0072_ ),
    .Q(data_out[20]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0941_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0073_ ),
    .Q(data_out[21]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0942_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0074_ ),
    .Q(data_out[22]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0943_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0075_ ),
    .Q(data_out[23]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0944_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0076_ ),
    .Q(data_out[24]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0945_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0077_ ),
    .Q(data_out[25]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0946_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0078_ ),
    .Q(data_out[26]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0947_  (.CLK(clknet_2_0__leaf_rclk),
    .D(\memory/_0079_ ),
    .Q(data_out[27]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0948_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0080_ ),
    .Q(data_out[28]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0949_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0081_ ),
    .Q(data_out[29]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0950_  (.CLK(clknet_2_1__leaf_rclk),
    .D(\memory/_0082_ ),
    .Q(data_out[30]));
 sky130_fd_sc_hd__dfxtp_1 \memory/_0951_  (.CLK(clknet_2_2__leaf_rclk),
    .D(\memory/_0083_ ),
    .Q(data_out[31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0952_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0084_ ),
    .DE(net31),
    .Q(\memory/mem[5] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0953_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0085_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0954_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0086_ ),
    .DE(net32),
    .Q(\memory/mem[5] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0955_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0087_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0956_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0088_ ),
    .DE(net32),
    .Q(\memory/mem[5] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0957_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0089_ ),
    .DE(net30),
    .Q(\memory/mem[5] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0958_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0090_ ),
    .DE(net30),
    .Q(\memory/mem[5] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0959_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0091_ ),
    .DE(net30),
    .Q(\memory/mem[5] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0960_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0092_ ),
    .DE(net32),
    .Q(\memory/mem[5] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0961_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0093_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0962_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0094_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0963_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0095_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0964_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0096_ ),
    .DE(net31),
    .Q(\memory/mem[5] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0965_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0097_ ),
    .DE(net32),
    .Q(\memory/mem[5] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0966_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0098_ ),
    .DE(net31),
    .Q(\memory/mem[5] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0967_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0099_ ),
    .DE(net30),
    .Q(\memory/mem[5] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0968_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0100_ ),
    .DE(net31),
    .Q(\memory/mem[5] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0969_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0101_ ),
    .DE(net31),
    .Q(\memory/mem[5] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0970_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0102_ ),
    .DE(net30),
    .Q(\memory/mem[5] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0971_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0103_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0972_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0104_ ),
    .DE(net30),
    .Q(\memory/mem[5] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0973_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0105_ ),
    .DE(net32),
    .Q(\memory/mem[5] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0974_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0106_ ),
    .DE(\memory/_0002_ ),
    .Q(\memory/mem[5] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0975_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0107_ ),
    .DE(net30),
    .Q(\memory/mem[5] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0976_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0108_ ),
    .DE(net31),
    .Q(\memory/mem[5] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0977_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0109_ ),
    .DE(net32),
    .Q(\memory/mem[5] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0978_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0110_ ),
    .DE(net32),
    .Q(\memory/mem[5] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0979_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0111_ ),
    .DE(net30),
    .Q(\memory/mem[5] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0980_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0112_ ),
    .DE(net32),
    .Q(\memory/mem[5] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0981_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0113_ ),
    .DE(net32),
    .Q(\memory/mem[5] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0982_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0114_ ),
    .DE(net30),
    .Q(\memory/mem[5] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0983_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0115_ ),
    .DE(net31),
    .Q(\memory/mem[5] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0984_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0116_ ),
    .DE(net10),
    .Q(\memory/mem[7] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0985_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0117_ ),
    .DE(net10),
    .Q(\memory/mem[7] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0986_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0118_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0987_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0119_ ),
    .DE(net10),
    .Q(\memory/mem[7] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0988_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0120_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0989_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0121_ ),
    .DE(net10),
    .Q(\memory/mem[7] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0990_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0122_ ),
    .DE(net10),
    .Q(\memory/mem[7] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0991_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0123_ ),
    .DE(net10),
    .Q(\memory/mem[7] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0992_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0124_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0993_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0125_ ),
    .DE(net10),
    .Q(\memory/mem[7] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0994_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0126_ ),
    .DE(net10),
    .Q(\memory/mem[7] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0995_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0127_ ),
    .DE(net10),
    .Q(\memory/mem[7] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0996_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0128_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0997_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0129_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0998_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0130_ ),
    .DE(net10),
    .Q(\memory/mem[7] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_0999_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0131_ ),
    .DE(net10),
    .Q(\memory/mem[7] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1000_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0132_ ),
    .DE(net10),
    .Q(\memory/mem[7] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1001_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0133_ ),
    .DE(net10),
    .Q(\memory/mem[7] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1002_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0134_ ),
    .DE(net10),
    .Q(\memory/mem[7] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1003_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0135_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1004_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0136_ ),
    .DE(net10),
    .Q(\memory/mem[7] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1005_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0137_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1006_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0138_ ),
    .DE(net10),
    .Q(\memory/mem[7] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1007_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0139_ ),
    .DE(net10),
    .Q(\memory/mem[7] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1008_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0140_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1009_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0141_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1010_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0142_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1011_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0143_ ),
    .DE(net10),
    .Q(\memory/mem[7] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1012_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0144_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1013_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0145_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1014_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0146_ ),
    .DE(net10),
    .Q(\memory/mem[7] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1015_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0147_ ),
    .DE(\memory/_0000_ ),
    .Q(\memory/mem[7] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1016_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0148_ ),
    .DE(net1),
    .Q(\memory/mem[2] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1017_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0149_ ),
    .DE(net1),
    .Q(\memory/mem[2] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1018_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0150_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1019_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0151_ ),
    .DE(net1),
    .Q(\memory/mem[2] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1020_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0152_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1021_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0153_ ),
    .DE(net1),
    .Q(\memory/mem[2] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1022_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0154_ ),
    .DE(net1),
    .Q(\memory/mem[2] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1023_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0155_ ),
    .DE(net1),
    .Q(\memory/mem[2] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1024_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0156_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1025_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0157_ ),
    .DE(net1),
    .Q(\memory/mem[2] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1026_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0158_ ),
    .DE(net1),
    .Q(\memory/mem[2] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1027_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0159_ ),
    .DE(net1),
    .Q(\memory/mem[2] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1028_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0160_ ),
    .DE(net1),
    .Q(\memory/mem[2] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1029_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0161_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1030_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0162_ ),
    .DE(net1),
    .Q(\memory/mem[2] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1031_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0163_ ),
    .DE(net1),
    .Q(\memory/mem[2] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1032_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0164_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1033_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0165_ ),
    .DE(net1),
    .Q(\memory/mem[2] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1034_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0166_ ),
    .DE(net1),
    .Q(\memory/mem[2] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1035_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0167_ ),
    .DE(net1),
    .Q(\memory/mem[2] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1036_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0168_ ),
    .DE(net1),
    .Q(\memory/mem[2] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1037_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0169_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1038_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0170_ ),
    .DE(net1),
    .Q(\memory/mem[2] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1039_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0171_ ),
    .DE(net1),
    .Q(\memory/mem[2] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1040_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0172_ ),
    .DE(net1),
    .Q(\memory/mem[2] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1041_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0173_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1042_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0174_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1043_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0175_ ),
    .DE(net1),
    .Q(\memory/mem[2] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1044_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0176_ ),
    .DE(\memory/_0005_ ),
    .Q(\memory/mem[2] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1045_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0177_ ),
    .DE(net1),
    .Q(\memory/mem[2] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1046_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0178_ ),
    .DE(net1),
    .Q(\memory/mem[2] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1047_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0179_ ),
    .DE(net1),
    .Q(\memory/mem[2] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1048_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0180_ ),
    .DE(net29),
    .Q(\memory/mem[4] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1049_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0181_ ),
    .DE(net29),
    .Q(\memory/mem[4] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1050_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0182_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1051_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0183_ ),
    .DE(net29),
    .Q(\memory/mem[4] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1052_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0184_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1053_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0185_ ),
    .DE(net29),
    .Q(\memory/mem[4] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1054_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0186_ ),
    .DE(net29),
    .Q(\memory/mem[4] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1055_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0187_ ),
    .DE(net29),
    .Q(\memory/mem[4] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1056_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0188_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1057_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0189_ ),
    .DE(net29),
    .Q(\memory/mem[4] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1058_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0190_ ),
    .DE(net29),
    .Q(\memory/mem[4] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1059_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0191_ ),
    .DE(net29),
    .Q(\memory/mem[4] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1060_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0192_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1061_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0193_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1062_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0194_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1063_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0195_ ),
    .DE(net29),
    .Q(\memory/mem[4] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1064_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0196_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1065_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0197_ ),
    .DE(net29),
    .Q(\memory/mem[4] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1066_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0198_ ),
    .DE(net29),
    .Q(\memory/mem[4] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1067_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0199_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1068_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0200_ ),
    .DE(net29),
    .Q(\memory/mem[4] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1069_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0201_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1070_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0202_ ),
    .DE(net29),
    .Q(\memory/mem[4] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1071_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0203_ ),
    .DE(net29),
    .Q(\memory/mem[4] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1072_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0204_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1073_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0205_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1074_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0206_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1075_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0207_ ),
    .DE(net29),
    .Q(\memory/mem[4] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1076_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0208_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1077_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0209_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1078_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0210_ ),
    .DE(net29),
    .Q(\memory/mem[4] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1079_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0211_ ),
    .DE(\memory/_0003_ ),
    .Q(\memory/mem[4] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1080_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0212_ ),
    .DE(net2),
    .Q(\memory/mem[3] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1081_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0213_ ),
    .DE(net2),
    .Q(\memory/mem[3] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1082_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0214_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1083_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0215_ ),
    .DE(net2),
    .Q(\memory/mem[3] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1084_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0216_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1085_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0217_ ),
    .DE(net2),
    .Q(\memory/mem[3] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1086_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0218_ ),
    .DE(net2),
    .Q(\memory/mem[3] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1087_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0219_ ),
    .DE(net2),
    .Q(\memory/mem[3] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1088_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0220_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1089_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0221_ ),
    .DE(net2),
    .Q(\memory/mem[3] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1090_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0222_ ),
    .DE(net2),
    .Q(\memory/mem[3] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1091_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0223_ ),
    .DE(net2),
    .Q(\memory/mem[3] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1092_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0224_ ),
    .DE(net2),
    .Q(\memory/mem[3] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1093_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0225_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1094_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0226_ ),
    .DE(net2),
    .Q(\memory/mem[3] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1095_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0227_ ),
    .DE(net2),
    .Q(\memory/mem[3] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1096_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0228_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1097_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0229_ ),
    .DE(net2),
    .Q(\memory/mem[3] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1098_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0230_ ),
    .DE(net2),
    .Q(\memory/mem[3] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1099_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0231_ ),
    .DE(net2),
    .Q(\memory/mem[3] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1100_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0232_ ),
    .DE(net2),
    .Q(\memory/mem[3] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1101_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0233_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1102_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0234_ ),
    .DE(net2),
    .Q(\memory/mem[3] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1103_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0235_ ),
    .DE(net2),
    .Q(\memory/mem[3] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1104_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0236_ ),
    .DE(net2),
    .Q(\memory/mem[3] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1105_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0237_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1106_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0238_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1107_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0239_ ),
    .DE(net2),
    .Q(\memory/mem[3] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1108_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0240_ ),
    .DE(\memory/_0004_ ),
    .Q(\memory/mem[3] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1109_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0241_ ),
    .DE(net2),
    .Q(\memory/mem[3] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1110_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0242_ ),
    .DE(net2),
    .Q(\memory/mem[3] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1111_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0243_ ),
    .DE(net2),
    .Q(\memory/mem[3] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1112_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0244_ ),
    .DE(net7),
    .Q(\memory/mem[1] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1113_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0245_ ),
    .DE(net8),
    .Q(\memory/mem[1] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1114_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0246_ ),
    .DE(net9),
    .Q(\memory/mem[1] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1115_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0247_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1116_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0248_ ),
    .DE(net9),
    .Q(\memory/mem[1] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1117_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0249_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1118_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0250_ ),
    .DE(net7),
    .Q(\memory/mem[1] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1119_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0251_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1120_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0252_ ),
    .DE(net9),
    .Q(\memory/mem[1] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1121_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0253_ ),
    .DE(net7),
    .Q(\memory/mem[1] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1122_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0254_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1123_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0255_ ),
    .DE(net7),
    .Q(\memory/mem[1] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1124_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0256_ ),
    .DE(net7),
    .Q(\memory/mem[1] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1125_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0257_ ),
    .DE(net9),
    .Q(\memory/mem[1] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1126_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0258_ ),
    .DE(net9),
    .Q(\memory/mem[1] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1127_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0259_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1128_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0260_ ),
    .DE(net9),
    .Q(\memory/mem[1] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1129_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0261_ ),
    .DE(net7),
    .Q(\memory/mem[1] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1130_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0262_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1131_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0263_ ),
    .DE(net8),
    .Q(\memory/mem[1] [19]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1132_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0264_ ),
    .DE(net8),
    .Q(\memory/mem[1] [20]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1133_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0265_ ),
    .DE(net9),
    .Q(\memory/mem[1] [21]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1134_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0266_ ),
    .DE(net8),
    .Q(\memory/mem[1] [22]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1135_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0267_ ),
    .DE(net8),
    .Q(\memory/mem[1] [23]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1136_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0268_ ),
    .DE(net8),
    .Q(\memory/mem[1] [24]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1137_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0269_ ),
    .DE(net9),
    .Q(\memory/mem[1] [25]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1138_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0270_ ),
    .DE(net9),
    .Q(\memory/mem[1] [26]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1139_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0271_ ),
    .DE(net7),
    .Q(\memory/mem[1] [27]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1140_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0272_ ),
    .DE(net9),
    .Q(\memory/mem[1] [28]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1141_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0273_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [29]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1142_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0274_ ),
    .DE(\memory/_0006_ ),
    .Q(\memory/mem[1] [30]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1143_  (.CLK(clknet_leaf_5_wclk),
    .D(\memory/_0275_ ),
    .DE(net8),
    .Q(\memory/mem[1] [31]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1144_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0276_ ),
    .DE(net3),
    .Q(\memory/mem[6] [0]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1145_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0277_ ),
    .DE(net3),
    .Q(\memory/mem[6] [1]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1146_  (.CLK(clknet_leaf_2_wclk),
    .D(\memory/_0278_ ),
    .DE(\memory/_0001_ ),
    .Q(\memory/mem[6] [2]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1147_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0279_ ),
    .DE(net3),
    .Q(\memory/mem[6] [3]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1148_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0280_ ),
    .DE(net3),
    .Q(\memory/mem[6] [4]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1149_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0281_ ),
    .DE(net3),
    .Q(\memory/mem[6] [5]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1150_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0282_ ),
    .DE(net3),
    .Q(\memory/mem[6] [6]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1151_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0283_ ),
    .DE(net3),
    .Q(\memory/mem[6] [7]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1152_  (.CLK(clknet_leaf_4_wclk),
    .D(\memory/_0284_ ),
    .DE(net3),
    .Q(\memory/mem[6] [8]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1153_  (.CLK(clknet_leaf_8_wclk),
    .D(\memory/_0285_ ),
    .DE(net3),
    .Q(\memory/mem[6] [9]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1154_  (.CLK(clknet_leaf_1_wclk),
    .D(\memory/_0286_ ),
    .DE(net3),
    .Q(\memory/mem[6] [10]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1155_  (.CLK(clknet_leaf_9_wclk),
    .D(\memory/_0287_ ),
    .DE(net3),
    .Q(\memory/mem[6] [11]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1156_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0288_ ),
    .DE(net3),
    .Q(\memory/mem[6] [12]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1157_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0289_ ),
    .DE(net3),
    .Q(\memory/mem[6] [13]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1158_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0290_ ),
    .DE(net3),
    .Q(\memory/mem[6] [14]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1159_  (.CLK(clknet_leaf_10_wclk),
    .D(\memory/_0291_ ),
    .DE(net3),
    .Q(\memory/mem[6] [15]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1160_  (.CLK(clknet_leaf_6_wclk),
    .D(\memory/_0292_ ),
    .DE(net3),
    .Q(\memory/mem[6] [16]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1161_  (.CLK(clknet_leaf_7_wclk),
    .D(\memory/_0293_ ),
    .DE(net3),
    .Q(\memory/mem[6] [17]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1162_  (.CLK(clknet_leaf_0_wclk),
    .D(\memory/_0294_ ),
    .DE(net3),
    .Q(\memory/mem[6] [18]));
 sky130_fd_sc_hd__edfxtp_1 \memory/_1163_  (.CLK(clknet_leaf_3_wclk),
    .D(\memory/_0295_ ),
    .DE(net3),
    .Q(\memory/mem[6] [19]));
 sky130_fd_sc_hd__clkinv_1 \read_pointer/_20_  (.A(rd_en),
    .Y(\read_pointer/_04_ ));
 sky130_fd_sc_hd__clkinv_1 \read_pointer/_21_  (.A(rrst_n),
    .Y(\read_pointer/_05_ ));
 sky130_fd_sc_hd__xor2_1 \read_pointer/_22_  (.A(rd_b_ptr[1]),
    .B(rd_b_ptr[0]),
    .X(rd_g_ptr[0]));
 sky130_fd_sc_hd__nor2_1 \read_pointer/_23_  (.A(rd_g_ptr[3]),
    .B(rd_b_ptr[2]),
    .Y(\read_pointer/_06_ ));
 sky130_fd_sc_hd__and2_0 \read_pointer/_24_  (.A(rd_g_ptr[3]),
    .B(rd_b_ptr[2]),
    .X(\read_pointer/_07_ ));
 sky130_fd_sc_hd__nor2_1 \read_pointer/_25_  (.A(\read_pointer/_06_ ),
    .B(\read_pointer/_07_ ),
    .Y(rd_g_ptr[2]));
 sky130_fd_sc_hd__xnor2_1 \read_pointer/_26_  (.A(rd_b_ptr[2]),
    .B(rd_b_ptr[1]),
    .Y(\read_pointer/_08_ ));
 sky130_fd_sc_hd__clkinv_1 \read_pointer/_27_  (.A(\read_pointer/_08_ ),
    .Y(rd_g_ptr[1]));
 sky130_fd_sc_hd__xnor2_1 \read_pointer/_28_  (.A(rd_g_ptr[3]),
    .B(wtr_g_ptr_ff[3]),
    .Y(\read_pointer/_09_ ));
 sky130_fd_sc_hd__xnor3_1 \read_pointer/_29_  (.A(rd_b_ptr[1]),
    .B(rd_b_ptr[0]),
    .C(wtr_g_ptr_ff[0]),
    .X(\read_pointer/_10_ ));
 sky130_fd_sc_hd__xnor3_1 \read_pointer/_30_  (.A(rd_g_ptr[3]),
    .B(rd_b_ptr[2]),
    .C(wtr_g_ptr_ff[2]),
    .X(\read_pointer/_11_ ));
 sky130_fd_sc_hd__xnor3_1 \read_pointer/_31_  (.A(rd_b_ptr[2]),
    .B(rd_b_ptr[1]),
    .C(wtr_g_ptr_ff[1]),
    .X(\read_pointer/_12_ ));
 sky130_fd_sc_hd__and4_1 \read_pointer/_32_  (.A(\read_pointer/_09_ ),
    .B(\read_pointer/_10_ ),
    .C(\read_pointer/_11_ ),
    .D(\read_pointer/_12_ ),
    .X(empty));
 sky130_fd_sc_hd__a41oi_1 \read_pointer/_33_  (.A1(\read_pointer/_09_ ),
    .A2(\read_pointer/_10_ ),
    .A3(\read_pointer/_11_ ),
    .A4(\read_pointer/_12_ ),
    .B1(\read_pointer/_04_ ),
    .Y(\read_pointer/_13_ ));
 sky130_fd_sc_hd__o21ai_0 \read_pointer/_34_  (.A1(rd_b_ptr[0]),
    .A2(\read_pointer/_13_ ),
    .B1(rrst_n),
    .Y(\read_pointer/_14_ ));
 sky130_fd_sc_hd__a21oi_1 \read_pointer/_35_  (.A1(rd_b_ptr[0]),
    .A2(\read_pointer/_13_ ),
    .B1(\read_pointer/_14_ ),
    .Y(\read_pointer/_00_ ));
 sky130_fd_sc_hd__and3_1 \read_pointer/_36_  (.A(rd_b_ptr[1]),
    .B(rd_b_ptr[0]),
    .C(\read_pointer/_13_ ),
    .X(\read_pointer/_15_ ));
 sky130_fd_sc_hd__a21oi_1 \read_pointer/_37_  (.A1(rd_b_ptr[0]),
    .A2(\read_pointer/_13_ ),
    .B1(rd_b_ptr[1]),
    .Y(\read_pointer/_16_ ));
 sky130_fd_sc_hd__nor3_1 \read_pointer/_38_  (.A(\read_pointer/_05_ ),
    .B(\read_pointer/_15_ ),
    .C(\read_pointer/_16_ ),
    .Y(\read_pointer/_01_ ));
 sky130_fd_sc_hd__a31oi_1 \read_pointer/_39_  (.A1(rd_b_ptr[1]),
    .A2(rd_b_ptr[0]),
    .A3(\read_pointer/_13_ ),
    .B1(rd_b_ptr[2]),
    .Y(\read_pointer/_17_ ));
 sky130_fd_sc_hd__and4_1 \read_pointer/_40_  (.A(rd_b_ptr[2]),
    .B(rd_b_ptr[1]),
    .C(rd_b_ptr[0]),
    .D(\read_pointer/_13_ ),
    .X(\read_pointer/_18_ ));
 sky130_fd_sc_hd__nor3_1 \read_pointer/_41_  (.A(\read_pointer/_05_ ),
    .B(\read_pointer/_17_ ),
    .C(\read_pointer/_18_ ),
    .Y(\read_pointer/_02_ ));
 sky130_fd_sc_hd__a41oi_1 \read_pointer/_42_  (.A1(rd_b_ptr[2]),
    .A2(rd_b_ptr[1]),
    .A3(rd_b_ptr[0]),
    .A4(\read_pointer/_13_ ),
    .B1(rd_g_ptr[3]),
    .Y(\read_pointer/_19_ ));
 sky130_fd_sc_hd__a211oi_1 \read_pointer/_43_  (.A1(\read_pointer/_07_ ),
    .A2(\read_pointer/_15_ ),
    .B1(\read_pointer/_19_ ),
    .C1(\read_pointer/_05_ ),
    .Y(\read_pointer/_03_ ));
 sky130_fd_sc_hd__dfxtp_4 \read_pointer/_44_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\read_pointer/_00_ ),
    .Q(rd_b_ptr[0]));
 sky130_fd_sc_hd__dfxtp_4 \read_pointer/_45_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\read_pointer/_01_ ),
    .Q(rd_b_ptr[1]));
 sky130_fd_sc_hd__dfxtp_4 \read_pointer/_46_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\read_pointer/_02_ ),
    .Q(rd_b_ptr[2]));
 sky130_fd_sc_hd__dfxtp_1 \read_pointer/_47_  (.CLK(clknet_2_3__leaf_rclk),
    .D(\read_pointer/_03_ ),
    .Q(rd_g_ptr[3]));
 sky130_fd_sc_hd__clkinv_1 \write_pointer/_19_  (.A(wtr_en),
    .Y(\write_pointer/_04_ ));
 sky130_fd_sc_hd__clkinv_1 \write_pointer/_20_  (.A(wrst_n),
    .Y(\write_pointer/_05_ ));
 sky130_fd_sc_hd__xor2_1 \write_pointer/_21_  (.A(wtr_b_ptr[1]),
    .B(wtr_b_ptr[0]),
    .X(wtr_g_ptr[0]));
 sky130_fd_sc_hd__nor2_1 \write_pointer/_22_  (.A(wtr_g_ptr[3]),
    .B(wtr_b_ptr[2]),
    .Y(\write_pointer/_06_ ));
 sky130_fd_sc_hd__and2_0 \write_pointer/_23_  (.A(wtr_g_ptr[3]),
    .B(wtr_b_ptr[2]),
    .X(\write_pointer/_07_ ));
 sky130_fd_sc_hd__nor2_1 \write_pointer/_24_  (.A(\write_pointer/_06_ ),
    .B(\write_pointer/_07_ ),
    .Y(wtr_g_ptr[2]));
 sky130_fd_sc_hd__xor2_1 \write_pointer/_25_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .X(wtr_g_ptr[1]));
 sky130_fd_sc_hd__xor2_1 \write_pointer/_26_  (.A(wtr_g_ptr[3]),
    .B(rd_g_ptr_ff[3]),
    .X(\write_pointer/_08_ ));
 sky130_fd_sc_hd__xor3_1 \write_pointer/_27_  (.A(wtr_g_ptr[3]),
    .B(wtr_b_ptr[2]),
    .C(rd_g_ptr_ff[2]),
    .X(\write_pointer/_09_ ));
 sky130_fd_sc_hd__xnor3_1 \write_pointer/_28_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .C(rd_g_ptr_ff[1]),
    .X(\write_pointer/_10_ ));
 sky130_fd_sc_hd__xnor3_1 \write_pointer/_29_  (.A(wtr_b_ptr[1]),
    .B(wtr_b_ptr[0]),
    .C(rd_g_ptr_ff[0]),
    .X(\write_pointer/_11_ ));
 sky130_fd_sc_hd__and4_1 \write_pointer/_30_  (.A(\write_pointer/_08_ ),
    .B(\write_pointer/_09_ ),
    .C(\write_pointer/_10_ ),
    .D(\write_pointer/_11_ ),
    .X(full));
 sky130_fd_sc_hd__a41oi_1 \write_pointer/_31_  (.A1(\write_pointer/_08_ ),
    .A2(\write_pointer/_09_ ),
    .A3(\write_pointer/_10_ ),
    .A4(\write_pointer/_11_ ),
    .B1(\write_pointer/_04_ ),
    .Y(\write_pointer/_12_ ));
 sky130_fd_sc_hd__o21ai_0 \write_pointer/_32_  (.A1(wtr_b_ptr[0]),
    .A2(\write_pointer/_12_ ),
    .B1(wrst_n),
    .Y(\write_pointer/_13_ ));
 sky130_fd_sc_hd__a21oi_1 \write_pointer/_33_  (.A1(wtr_b_ptr[0]),
    .A2(\write_pointer/_12_ ),
    .B1(\write_pointer/_13_ ),
    .Y(\write_pointer/_00_ ));
 sky130_fd_sc_hd__and3_1 \write_pointer/_34_  (.A(wtr_b_ptr[1]),
    .B(wtr_b_ptr[0]),
    .C(\write_pointer/_12_ ),
    .X(\write_pointer/_14_ ));
 sky130_fd_sc_hd__a21oi_1 \write_pointer/_35_  (.A1(wtr_b_ptr[0]),
    .A2(\write_pointer/_12_ ),
    .B1(wtr_b_ptr[1]),
    .Y(\write_pointer/_15_ ));
 sky130_fd_sc_hd__nor3_1 \write_pointer/_36_  (.A(\write_pointer/_05_ ),
    .B(\write_pointer/_14_ ),
    .C(\write_pointer/_15_ ),
    .Y(\write_pointer/_01_ ));
 sky130_fd_sc_hd__a31oi_1 \write_pointer/_37_  (.A1(wtr_b_ptr[1]),
    .A2(wtr_b_ptr[0]),
    .A3(\write_pointer/_12_ ),
    .B1(wtr_b_ptr[2]),
    .Y(\write_pointer/_16_ ));
 sky130_fd_sc_hd__and4_1 \write_pointer/_38_  (.A(wtr_b_ptr[2]),
    .B(wtr_b_ptr[1]),
    .C(wtr_b_ptr[0]),
    .D(\write_pointer/_12_ ),
    .X(\write_pointer/_17_ ));
 sky130_fd_sc_hd__nor3_1 \write_pointer/_39_  (.A(\write_pointer/_05_ ),
    .B(\write_pointer/_16_ ),
    .C(\write_pointer/_17_ ),
    .Y(\write_pointer/_02_ ));
 sky130_fd_sc_hd__a41oi_1 \write_pointer/_40_  (.A1(wtr_b_ptr[2]),
    .A2(wtr_b_ptr[1]),
    .A3(wtr_b_ptr[0]),
    .A4(\write_pointer/_12_ ),
    .B1(wtr_g_ptr[3]),
    .Y(\write_pointer/_18_ ));
 sky130_fd_sc_hd__a211oi_1 \write_pointer/_41_  (.A1(\write_pointer/_07_ ),
    .A2(\write_pointer/_14_ ),
    .B1(\write_pointer/_18_ ),
    .C1(\write_pointer/_05_ ),
    .Y(\write_pointer/_03_ ));
 sky130_fd_sc_hd__dfxtp_1 \write_pointer/_42_  (.CLK(clknet_leaf_2_wclk),
    .D(\write_pointer/_00_ ),
    .Q(wtr_b_ptr[0]));
 sky130_fd_sc_hd__dfxtp_1 \write_pointer/_43_  (.CLK(clknet_leaf_2_wclk),
    .D(\write_pointer/_01_ ),
    .Q(wtr_b_ptr[1]));
 sky130_fd_sc_hd__dfxtp_1 \write_pointer/_44_  (.CLK(clknet_leaf_2_wclk),
    .D(\write_pointer/_02_ ),
    .Q(wtr_b_ptr[2]));
 sky130_fd_sc_hd__dfxtp_1 \write_pointer/_45_  (.CLK(clknet_leaf_2_wclk),
    .D(\write_pointer/_03_ ),
    .Q(wtr_g_ptr[3]));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Right_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Right_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Right_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Right_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Right_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Right_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Right_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Right_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Right_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Right_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Right_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Right_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Right_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Right_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Right_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Right_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Right_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Right_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Right_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_85 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_86 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_87 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_89 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_90 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_91 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_92 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_93 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_94 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_95 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_96 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_97 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_98 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_99 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_100 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_101 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_102 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_103 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_104 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_105 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_106 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_107 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_108 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_109 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_110 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_111 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_112 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Left_113 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Left_114 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Left_115 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Left_116 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Left_117 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Left_118 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Left_119 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Left_120 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Left_121 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Left_122 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Left_123 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Left_124 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Left_125 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Left_126 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Left_127 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Left_128 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Left_129 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Left_130 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_65_Left_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_344 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_345 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_346 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_347 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_348 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_349 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_350 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_351 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_352 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_353 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_354 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_355 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_356 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_357 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_358 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_359 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_360 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_361 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_362 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_363 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_364 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_365 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_366 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_367 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_368 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_369 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_370 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_371 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_372 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_373 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_374 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_375 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_376 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_377 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_378 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_379 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_380 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_381 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_382 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_383 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_384 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_385 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_386 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_387 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_388 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_389 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_390 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_391 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_392 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_393 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_394 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_395 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_396 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_397 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_398 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_399 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_400 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_401 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_402 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_403 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_404 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_405 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_406 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_407 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_408 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_409 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_410 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_411 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_412 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_413 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_414 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_415 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_416 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_417 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_418 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_419 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_420 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_421 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_422 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_423 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_424 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_425 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_426 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_427 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_428 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_429 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_430 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_431 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_432 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_433 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_434 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_435 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_436 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_437 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_438 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_439 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_440 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_441 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_442 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_443 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_444 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_445 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_446 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_447 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_448 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_449 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_450 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_451 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_452 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_453 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_454 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_455 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_456 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_457 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_458 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_459 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_460 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_461 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_462 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_463 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_464 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_465 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_466 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_467 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_468 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_469 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_470 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_471 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_472 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_473 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_474 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_475 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_476 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_477 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_478 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_479 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_480 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_481 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_482 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_483 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_484 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_485 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_486 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_487 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_488 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_489 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_490 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_491 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_492 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_493 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_494 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_495 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_496 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_497 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_498 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_499 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_500 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_501 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_502 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_503 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_504 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_505 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_506 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_507 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_508 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_509 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_510 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_511 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_512 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_513 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_514 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_515 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_516 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_517 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_518 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_519 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_520 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_521 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_522 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_523 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_524 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_525 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_526 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_527 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_528 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_529 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_530 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_531 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_532 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_533 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_534 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_535 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_536 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_537 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_538 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_65_539 ();
 sky130_fd_sc_hd__buf_12 load_slew1 (.A(\memory/_0005_ ),
    .X(net1));
 sky130_fd_sc_hd__buf_12 load_slew2 (.A(\memory/_0004_ ),
    .X(net2));
 sky130_fd_sc_hd__buf_12 load_slew3 (.A(\memory/_0001_ ),
    .X(net3));
 sky130_fd_sc_hd__buf_6 load_slew4 (.A(net5),
    .X(net4));
 sky130_fd_sc_hd__probec_p_8 load_slew5 (.A(\memory/_0007_ ),
    .X(net5));
 sky130_fd_sc_hd__probec_p_8 load_slew6 (.A(\memory/_0007_ ),
    .X(net6));
 sky130_fd_sc_hd__buf_6 load_slew7 (.A(net8),
    .X(net7));
 sky130_fd_sc_hd__buf_6 load_slew8 (.A(\memory/_0006_ ),
    .X(net8));
 sky130_fd_sc_hd__buf_6 wire9 (.A(\memory/_0006_ ),
    .X(net9));
 sky130_fd_sc_hd__buf_12 load_slew10 (.A(\memory/_0000_ ),
    .X(net10));
 sky130_fd_sc_hd__buf_4 load_slew11 (.A(net12),
    .X(net11));
 sky130_fd_sc_hd__buf_4 wire12 (.A(net18),
    .X(net12));
 sky130_fd_sc_hd__buf_4 load_slew13 (.A(net18),
    .X(net13));
 sky130_fd_sc_hd__buf_4 load_slew14 (.A(net18),
    .X(net14));
 sky130_fd_sc_hd__buf_4 load_slew15 (.A(net17),
    .X(net15));
 sky130_fd_sc_hd__buf_6 load_slew16 (.A(net17),
    .X(net16));
 sky130_fd_sc_hd__buf_6 load_slew17 (.A(\memory/_0300_ ),
    .X(net17));
 sky130_fd_sc_hd__buf_6 load_slew18 (.A(\memory/_0300_ ),
    .X(net18));
 sky130_fd_sc_hd__buf_12 wire19 (.A(\memory/_0296_ ),
    .X(net19));
 sky130_fd_sc_hd__buf_16 load_slew20 (.A(\memory/_0306_ ),
    .X(net20));
 sky130_fd_sc_hd__buf_16 load_slew21 (.A(\memory/_0303_ ),
    .X(net21));
 sky130_fd_sc_hd__buf_16 load_slew22 (.A(net24),
    .X(net22));
 sky130_fd_sc_hd__probec_p_8 load_slew23 (.A(net24),
    .X(net23));
 sky130_fd_sc_hd__buf_8 load_slew24 (.A(\memory/_0298_ ),
    .X(net24));
 sky130_fd_sc_hd__buf_12 load_slew25 (.A(rd_b_ptr[2]),
    .X(net25));
 sky130_fd_sc_hd__buf_12 load_slew26 (.A(rd_b_ptr[1]),
    .X(net26));
 sky130_fd_sc_hd__buf_12 load_slew27 (.A(net28),
    .X(net27));
 sky130_fd_sc_hd__buf_12 load_slew28 (.A(rd_b_ptr[0]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_0_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_0_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_1_wclk (.A(clknet_1_1__leaf_wclk),
    .X(clknet_leaf_1_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_2_wclk (.A(clknet_1_1__leaf_wclk),
    .X(clknet_leaf_2_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_3_wclk (.A(clknet_1_1__leaf_wclk),
    .X(clknet_leaf_3_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_4_wclk (.A(clknet_1_1__leaf_wclk),
    .X(clknet_leaf_4_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_5_wclk (.A(clknet_1_1__leaf_wclk),
    .X(clknet_leaf_5_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_6_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_6_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_7_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_7_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_8_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_8_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_9_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_9_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_leaf_10_wclk (.A(clknet_1_0__leaf_wclk),
    .X(clknet_leaf_10_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_wclk (.A(wclk),
    .X(clknet_0_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_0__f_wclk (.A(clknet_0_wclk),
    .X(clknet_1_0__leaf_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_1__f_wclk (.A(clknet_0_wclk),
    .X(clknet_1_1__leaf_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_1_1__leaf_wclk));
 sky130_fd_sc_hd__inv_6 clkload1 (.A(clknet_leaf_6_wclk));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_leaf_8_wclk));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_leaf_9_wclk));
 sky130_fd_sc_hd__clkinv_4 clkload4 (.A(clknet_leaf_10_wclk));
 sky130_fd_sc_hd__inv_16 clkload5 (.A(clknet_leaf_1_wclk));
 sky130_fd_sc_hd__inv_8 clkload6 (.A(clknet_leaf_2_wclk));
 sky130_fd_sc_hd__clkinv_4 clkload7 (.A(clknet_leaf_5_wclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_rclk (.A(rclk),
    .X(clknet_0_rclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_0__f_rclk (.A(clknet_0_rclk),
    .X(clknet_2_0__leaf_rclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_1__f_rclk (.A(clknet_0_rclk),
    .X(clknet_2_1__leaf_rclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_2__f_rclk (.A(clknet_0_rclk),
    .X(clknet_2_2__leaf_rclk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_3__f_rclk (.A(clknet_0_rclk),
    .X(clknet_2_3__leaf_rclk));
 sky130_fd_sc_hd__clkinvlp_2 clkload8 (.A(clknet_2_0__leaf_rclk));
 sky130_fd_sc_hd__bufinv_16 clkload9 (.A(clknet_2_1__leaf_rclk));
 sky130_fd_sc_hd__clkbuf_4 clkload10 (.A(clknet_2_3__leaf_rclk));
 sky130_fd_sc_hd__buf_12 load_slew29 (.A(\memory/_0003_ ),
    .X(net29));
 sky130_fd_sc_hd__buf_6 load_slew30 (.A(\memory/_0002_ ),
    .X(net30));
 sky130_fd_sc_hd__buf_6 load_slew31 (.A(net32),
    .X(net31));
 sky130_fd_sc_hd__buf_6 load_slew32 (.A(\memory/_0002_ ),
    .X(net32));
endmodule
