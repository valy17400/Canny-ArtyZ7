// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hysteresis (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_rows_V,
        src_cols_V,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write,
        threshold_low,
        threshold_high
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] src_rows_V;
input  [31:0] src_cols_V;
input  [15:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
output  [7:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;
input  [31:0] threshold_low;
input  [31:0] threshold_high;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;
reg dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    src_data_stream_V_blk_n;
wire    ap_CS_fsm_state8;
wire   [0:0] or_cond_fu_483_p2;
reg    dst_data_stream_V_blk_n;
wire    ap_CS_fsm_state11;
wire   [0:0] or_cond5_fu_825_p2;
reg    ap_block_state1;
wire   [32:0] lhs_V_cast_fu_275_p1;
wire   [32:0] ret_V_fu_279_p2;
wire   [32:0] lhs_V_2_cast_fu_285_p1;
wire   [32:0] ret_V_4_fu_289_p2;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state6;
wire   [32:0] tmp_s_fu_307_p2;
wire   [32:0] ret_V_5_fu_312_p2;
wire   [64:0] grp_fu_301_p2;
reg   [15:0] win_val_0_1_2_load_reg_966;
wire    ap_CS_fsm_state7;
reg   [15:0] win_val_1_1_2_load_reg_971;
reg   [15:0] win_val_2_1_2_load_reg_976;
wire   [0:0] tmp_24_fu_330_p2;
reg   [0:0] tmp_24_reg_981;
wire   [0:0] icmp_fu_345_p2;
reg   [0:0] icmp_reg_986;
wire   [0:0] tmp_26_fu_351_p2;
reg   [0:0] tmp_26_reg_991;
wire   [0:0] tmp_27_fu_357_p2;
reg   [0:0] tmp_27_reg_996;
wire   [0:0] tmp_28_fu_366_p2;
reg   [0:0] tmp_28_reg_1001;
wire   [64:0] indvar_flatten_next_fu_376_p2;
reg   [64:0] indvar_flatten_next_reg_1013;
wire   [0:0] tmp_25_mid1_fu_407_p2;
reg   [0:0] tmp_25_mid1_reg_1018;
wire   [0:0] exitcond_flatten_fu_371_p2;
wire   [0:0] icmp2_fu_422_p2;
reg   [0:0] icmp2_reg_1023;
wire   [0:0] tmp_27_mid1_fu_428_p2;
reg   [0:0] tmp_27_mid1_reg_1028;
wire   [0:0] tmp_28_mid1_fu_434_p2;
reg   [0:0] tmp_28_mid1_reg_1033;
wire   [31:0] t_V_mid2_fu_439_p3;
reg   [31:0] t_V_mid2_reg_1038;
wire   [31:0] col_assign_mid2_fu_447_p3;
reg   [31:0] col_assign_mid2_reg_1043;
reg    ap_block_state8;
wire   [0:0] tmp_26_mid2_fu_459_p3;
reg   [0:0] tmp_26_mid2_reg_1051;
wire   [0:0] tmp_27_mid2_fu_464_p3;
reg   [0:0] tmp_27_mid2_reg_1056;
wire   [0:0] tmp_28_mid2_fu_469_p3;
reg   [0:0] tmp_28_mid2_reg_1061;
wire   [32:0] tmp_30_cast_mid2_cas_fu_474_p1;
reg   [32:0] tmp_30_cast_mid2_cas_reg_1066;
wire   [0:0] tmp_29_fu_478_p2;
reg   [0:0] tmp_29_reg_1071;
reg   [0:0] or_cond_reg_1078;
reg   [10:0] linebuff_val_1_addr_reg_1082;
wire   [15:0] linebuff_val_0_q0;
reg   [15:0] tmp0_reg_1092;
wire    ap_CS_fsm_state9;
wire   [0:0] or_cond4_fu_577_p2;
reg   [0:0] or_cond4_reg_1097;
wire    ap_CS_fsm_state10;
wire   [0:0] tmp_36_fu_587_p2;
reg   [0:0] tmp_36_reg_1102;
wire   [0:0] slt4_fu_677_p2;
reg   [0:0] slt4_reg_1107;
wire   [0:0] slt5_fu_682_p2;
reg   [0:0] slt5_reg_1112;
wire   [0:0] slt6_fu_687_p2;
reg   [0:0] slt6_reg_1117;
wire   [0:0] slt7_fu_692_p2;
reg   [0:0] slt7_reg_1122;
wire   [0:0] slt8_fu_697_p2;
reg   [0:0] slt8_reg_1127;
wire   [0:0] tmp27_fu_720_p2;
reg   [0:0] tmp27_reg_1132;
wire   [31:0] j_V_fu_830_p2;
reg    ap_block_state11;
reg   [10:0] linebuff_val_0_address0;
reg    linebuff_val_0_ce0;
reg    linebuff_val_0_we0;
reg   [10:0] linebuff_val_1_address0;
reg    linebuff_val_1_ce0;
reg    linebuff_val_1_we0;
wire   [15:0] linebuff_val_1_q0;
reg   [64:0] indvar_flatten_reg_232;
reg   [31:0] t_V_reg_243;
reg   [31:0] t_V_2_reg_254;
wire   [63:0] tmp_31_fu_494_p1;
wire   [63:0] tmp_32_fu_514_p1;
reg   [15:0] win_val_0_1_fu_120;
wire   [15:0] win_val_0_0_0_win_va_fu_541_p3;
reg   [15:0] win_val_0_1_2_fu_124;
reg   [15:0] win_val_1_1_fu_128;
wire   [15:0] win_val_1_0_0_win_va_fu_534_p3;
reg   [15:0] win_val_1_1_2_fu_132;
reg   [15:0] win_val_2_1_fu_136;
wire   [15:0] win_val_2_0_0_win_va_fu_527_p3;
reg   [15:0] win_val_2_1_2_fu_140;
reg   [15:0] tmp1_1_fu_144;
reg   [15:0] tmp0_1_fu_148;
reg   [15:0] element_gd_1_fu_152;
wire   [32:0] grp_fu_301_p0;
wire   [32:0] grp_fu_301_p1;
wire   [30:0] tmp_fu_335_p4;
wire   [32:0] tmp_cast_mid1_fu_326_p1;
wire   [32:0] tmp_30_cast_fu_362_p1;
wire   [31:0] i_V_fu_397_p2;
wire   [30:0] tmp_46_fu_412_p4;
wire   [32:0] tmp_cast_fu_403_p1;
wire   [0:0] tmp_25_mid2_fu_454_p3;
wire   [30:0] tmp_50_fu_548_p4;
wire   [0:0] icmp3_fu_557_p2;
wire   [0:0] tmp_34_fu_563_p2;
wire   [0:0] tmp25_fu_572_p2;
wire   [0:0] tmp24_fu_567_p2;
wire   [31:0] tmp_35_fu_583_p1;
wire   [0:0] sel_tmp6_demorgan_fu_621_p2;
wire   [0:0] slt_fu_633_p2;
wire   [31:0] tmp_37_fu_592_p1;
wire   [0:0] slt1_fu_644_p2;
wire   [31:0] tmp_38_fu_596_p1;
wire   [0:0] slt2_fu_655_p2;
wire   [31:0] tmp_39_fu_600_p1;
wire   [0:0] slt3_fu_666_p2;
wire   [31:0] tmp_40_fu_603_p1;
wire   [31:0] tmp_41_fu_607_p1;
wire   [31:0] tmp_42_fu_610_p1;
wire   [31:0] tmp_43_fu_614_p1;
wire   [31:0] tmp_44_fu_618_p1;
wire   [0:0] rev_fu_638_p2;
wire   [0:0] sel_tmp6_fu_627_p2;
wire   [0:0] rev2_fu_660_p2;
wire   [0:0] rev3_fu_671_p2;
wire   [0:0] tmp28_fu_708_p2;
wire   [0:0] rev1_fu_649_p2;
wire   [0:0] tmp29_fu_714_p2;
wire   [0:0] tmp26_fu_702_p2;
wire   [0:0] rev4_fu_741_p2;
wire   [0:0] rev5_fu_746_p2;
wire   [0:0] rev7_fu_756_p2;
wire   [0:0] rev8_fu_761_p2;
wire   [0:0] tmp32_fu_772_p2;
wire   [0:0] rev6_fu_751_p2;
wire   [0:0] tmp33_fu_778_p2;
wire   [0:0] tmp30_fu_766_p2;
wire   [0:0] tmp31_fu_784_p2;
wire   [0:0] sel_tmp4_fu_790_p2;
wire   [0:0] tmp34_fu_795_p2;
wire   [0:0] tmp_55_demorgan_fu_800_p2;
wire   [0:0] tmp_45_fu_805_p2;
wire   [0:0] tmp_47_fu_820_p2;
reg   [10:0] ap_NS_fsm;
wire   [64:0] grp_fu_301_p00;
wire   [64:0] grp_fu_301_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
end

hysteresis_linebuff_val_0 #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
linebuff_val_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuff_val_0_address0),
    .ce0(linebuff_val_0_ce0),
    .we0(linebuff_val_0_we0),
    .d0(element_gd_1_fu_152),
    .q0(linebuff_val_0_q0)
);

hysteresis_linebuff_val_0 #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
linebuff_val_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuff_val_1_address0),
    .ce0(linebuff_val_1_ce0),
    .we0(linebuff_val_1_we0),
    .d0(tmp0_reg_1092),
    .q0(linebuff_val_1_q0)
);

canny_edge_mul_33ns_33ns_65_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 33 ),
    .din1_WIDTH( 33 ),
    .dout_WIDTH( 65 ))
canny_edge_mul_33ns_33ns_65_5_1_U63(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_301_p0),
    .din1(grp_fu_301_p1),
    .ce(1'b1),
    .dout(grp_fu_301_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond_flatten_fu_371_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_232 <= indvar_flatten_next_reg_1013;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        indvar_flatten_reg_232 <= 65'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        t_V_2_reg_254 <= j_V_fu_830_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_2_reg_254 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        t_V_reg_243 <= t_V_mid2_reg_1038;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        t_V_reg_243 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        col_assign_mid2_reg_1043 <= col_assign_mid2_fu_447_p3;
        or_cond_reg_1078 <= or_cond_fu_483_p2;
        tmp_26_mid2_reg_1051 <= tmp_26_mid2_fu_459_p3;
        tmp_27_mid2_reg_1056 <= tmp_27_mid2_fu_464_p3;
        tmp_28_mid2_reg_1061 <= tmp_28_mid2_fu_469_p3;
        tmp_29_reg_1071 <= tmp_29_fu_478_p2;
        tmp_30_cast_mid2_cas_reg_1066[31 : 0] <= tmp_30_cast_mid2_cas_fu_474_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (or_cond_fu_483_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        element_gd_1_fu_152 <= src_data_stream_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        icmp2_reg_1023 <= icmp2_fu_422_p2;
        t_V_mid2_reg_1038 <= t_V_mid2_fu_439_p3;
        tmp_25_mid1_reg_1018 <= tmp_25_mid1_fu_407_p2;
        tmp_27_mid1_reg_1028 <= tmp_27_mid1_fu_428_p2;
        tmp_28_mid1_reg_1033 <= tmp_28_mid1_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        icmp_reg_986 <= icmp_fu_345_p2;
        indvar_flatten_next_reg_1013 <= indvar_flatten_next_fu_376_p2;
        tmp_24_reg_981 <= tmp_24_fu_330_p2;
        tmp_26_reg_991 <= tmp_26_fu_351_p2;
        tmp_27_reg_996 <= tmp_27_fu_357_p2;
        tmp_28_reg_1001 <= tmp_28_fu_366_p2;
        win_val_0_1_2_fu_124 <= win_val_0_1_fu_120;
        win_val_0_1_2_load_reg_966 <= win_val_0_1_2_fu_124;
        win_val_1_1_2_fu_132 <= win_val_1_1_fu_128;
        win_val_1_1_2_load_reg_971 <= win_val_1_1_2_fu_132;
        win_val_2_1_2_fu_140 <= win_val_2_1_fu_136;
        win_val_2_1_2_load_reg_976 <= win_val_2_1_2_fu_140;
    end
end

always @ (posedge ap_clk) begin
    if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (tmp_29_fu_478_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        linebuff_val_1_addr_reg_1082 <= tmp_31_fu_494_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        or_cond4_reg_1097 <= or_cond4_fu_577_p2;
        slt4_reg_1107 <= slt4_fu_677_p2;
        slt5_reg_1112 <= slt5_fu_682_p2;
        slt6_reg_1117 <= slt6_fu_687_p2;
        slt7_reg_1122 <= slt7_fu_692_p2;
        slt8_reg_1127 <= slt8_fu_697_p2;
        tmp27_reg_1132 <= tmp27_fu_720_p2;
        tmp_36_reg_1102 <= tmp_36_fu_587_p2;
        win_val_0_1_fu_120 <= win_val_0_0_0_win_va_fu_541_p3;
        win_val_1_1_fu_128 <= win_val_1_0_0_win_va_fu_534_p3;
        win_val_2_1_fu_136 <= win_val_2_0_0_win_va_fu_527_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp0_1_fu_148 <= linebuff_val_0_q0;
        tmp0_reg_1092 <= linebuff_val_0_q0;
        tmp1_1_fu_144 <= linebuff_val_1_q0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_fu_371_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_fu_371_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond5_fu_825_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        dst_data_stream_V_blk_n = dst_data_stream_V_full_n;
    end else begin
        dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0)) & (or_cond5_fu_825_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        dst_data_stream_V_write = 1'b1;
    end else begin
        dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        linebuff_val_0_address0 = tmp_32_fu_514_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuff_val_0_address0 = tmp_31_fu_494_p1;
    end else begin
        linebuff_val_0_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8)))) begin
        linebuff_val_0_ce0 = 1'b1;
    end else begin
        linebuff_val_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_reg_1078 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        linebuff_val_0_we0 = 1'b1;
    end else begin
        linebuff_val_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        linebuff_val_1_address0 = linebuff_val_1_addr_reg_1082;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuff_val_1_address0 = tmp_31_fu_494_p1;
    end else begin
        linebuff_val_1_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8)))) begin
        linebuff_val_1_ce0 = 1'b1;
    end else begin
        linebuff_val_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_29_reg_1071 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        linebuff_val_1_we0 = 1'b1;
    end else begin
        linebuff_val_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_fu_483_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        src_data_stream_V_blk_n = src_data_stream_V_empty_n;
    end else begin
        src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (or_cond_fu_483_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        src_data_stream_V_read = 1'b1;
    end else begin
        src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_flatten_fu_371_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (tmp_29_fu_478_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if ((~((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0)) & (tmp_29_fu_478_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if ((~((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state11 = ((or_cond5_fu_825_p2 == 1'd0) & (dst_data_stream_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state8 = ((or_cond_fu_483_p2 == 1'd1) & (src_data_stream_V_empty_n == 1'b0));
end

assign col_assign_mid2_fu_447_p3 = ((tmp_28_reg_1001[0:0] === 1'b1) ? t_V_2_reg_254 : 32'd0);

assign dst_data_stream_V_din = ((tmp_45_fu_805_p2[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign exitcond_flatten_fu_371_p2 = ((indvar_flatten_reg_232 == grp_fu_301_p2) ? 1'b1 : 1'b0);

assign grp_fu_301_p0 = grp_fu_301_p00;

assign grp_fu_301_p00 = ret_V_fu_279_p2;

assign grp_fu_301_p1 = grp_fu_301_p10;

assign grp_fu_301_p10 = ret_V_4_fu_289_p2;

assign i_V_fu_397_p2 = (t_V_reg_243 + 32'd1);

assign icmp2_fu_422_p2 = ((tmp_46_fu_412_p4 == 31'd0) ? 1'b1 : 1'b0);

assign icmp3_fu_557_p2 = ((tmp_50_fu_548_p4 == 31'd0) ? 1'b1 : 1'b0);

assign icmp_fu_345_p2 = ((tmp_fu_335_p4 == 31'd0) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_376_p2 = (indvar_flatten_reg_232 + 65'd1);

assign j_V_fu_830_p2 = (col_assign_mid2_reg_1043 + 32'd1);

assign lhs_V_2_cast_fu_285_p1 = src_cols_V;

assign lhs_V_cast_fu_275_p1 = src_rows_V;

assign or_cond4_fu_577_p2 = (tmp25_fu_572_p2 | tmp24_fu_567_p2);

assign or_cond5_fu_825_p2 = (tmp_47_fu_820_p2 | tmp_27_mid2_reg_1056);

assign or_cond_fu_483_p2 = (tmp_29_fu_478_p2 & tmp_25_mid2_fu_454_p3);

assign ret_V_4_fu_289_p2 = (lhs_V_2_cast_fu_285_p1 + 33'd1);

assign ret_V_5_fu_312_p2 = ($signed(lhs_V_2_cast_fu_285_p1) + $signed(33'd8589934591));

assign ret_V_fu_279_p2 = (lhs_V_cast_fu_275_p1 + 33'd1);

assign rev1_fu_649_p2 = (slt1_fu_644_p2 ^ 1'd1);

assign rev2_fu_660_p2 = (slt2_fu_655_p2 ^ 1'd1);

assign rev3_fu_671_p2 = (slt3_fu_666_p2 ^ 1'd1);

assign rev4_fu_741_p2 = (slt4_reg_1107 ^ 1'd1);

assign rev5_fu_746_p2 = (slt5_reg_1112 ^ 1'd1);

assign rev6_fu_751_p2 = (slt6_reg_1117 ^ 1'd1);

assign rev7_fu_756_p2 = (slt7_reg_1122 ^ 1'd1);

assign rev8_fu_761_p2 = (slt8_reg_1127 ^ 1'd1);

assign rev_fu_638_p2 = (slt_fu_633_p2 ^ 1'd1);

assign sel_tmp4_fu_790_p2 = (tmp31_fu_784_p2 & tmp27_reg_1132);

assign sel_tmp6_demorgan_fu_621_p2 = (tmp_36_fu_587_p2 | or_cond4_fu_577_p2);

assign sel_tmp6_fu_627_p2 = (sel_tmp6_demorgan_fu_621_p2 ^ 1'd1);

assign slt1_fu_644_p2 = (($signed(threshold_high) < $signed(tmp_37_fu_592_p1)) ? 1'b1 : 1'b0);

assign slt2_fu_655_p2 = (($signed(threshold_high) < $signed(tmp_38_fu_596_p1)) ? 1'b1 : 1'b0);

assign slt3_fu_666_p2 = (($signed(threshold_high) < $signed(tmp_39_fu_600_p1)) ? 1'b1 : 1'b0);

assign slt4_fu_677_p2 = (($signed(threshold_high) < $signed(tmp_40_fu_603_p1)) ? 1'b1 : 1'b0);

assign slt5_fu_682_p2 = (($signed(threshold_high) < $signed(tmp_41_fu_607_p1)) ? 1'b1 : 1'b0);

assign slt6_fu_687_p2 = (($signed(threshold_high) < $signed(tmp_42_fu_610_p1)) ? 1'b1 : 1'b0);

assign slt7_fu_692_p2 = (($signed(threshold_high) < $signed(tmp_43_fu_614_p1)) ? 1'b1 : 1'b0);

assign slt8_fu_697_p2 = (($signed(threshold_high) < $signed(tmp_44_fu_618_p1)) ? 1'b1 : 1'b0);

assign slt_fu_633_p2 = (($signed(threshold_high) < $signed(tmp_35_fu_583_p1)) ? 1'b1 : 1'b0);

assign t_V_mid2_fu_439_p3 = ((tmp_28_fu_366_p2[0:0] === 1'b1) ? t_V_reg_243 : i_V_fu_397_p2);

assign tmp24_fu_567_p2 = (tmp_28_mid2_reg_1061 | icmp3_fu_557_p2);

assign tmp25_fu_572_p2 = (tmp_34_fu_563_p2 | tmp_26_mid2_reg_1051);

assign tmp26_fu_702_p2 = (sel_tmp6_fu_627_p2 & rev_fu_638_p2);

assign tmp27_fu_720_p2 = (tmp29_fu_714_p2 & tmp26_fu_702_p2);

assign tmp28_fu_708_p2 = (rev3_fu_671_p2 & rev2_fu_660_p2);

assign tmp29_fu_714_p2 = (tmp28_fu_708_p2 & rev1_fu_649_p2);

assign tmp30_fu_766_p2 = (rev5_fu_746_p2 & rev4_fu_741_p2);

assign tmp31_fu_784_p2 = (tmp33_fu_778_p2 & tmp30_fu_766_p2);

assign tmp32_fu_772_p2 = (rev8_fu_761_p2 & rev7_fu_756_p2);

assign tmp33_fu_778_p2 = (tmp32_fu_772_p2 & rev6_fu_751_p2);

assign tmp34_fu_795_p2 = (sel_tmp4_fu_790_p2 | or_cond4_reg_1097);

assign tmp_24_fu_330_p2 = ((t_V_reg_243 < src_rows_V) ? 1'b1 : 1'b0);

assign tmp_25_mid1_fu_407_p2 = ((i_V_fu_397_p2 < src_rows_V) ? 1'b1 : 1'b0);

assign tmp_25_mid2_fu_454_p3 = ((tmp_28_reg_1001[0:0] === 1'b1) ? tmp_24_reg_981 : tmp_25_mid1_reg_1018);

assign tmp_26_fu_351_p2 = ((t_V_reg_243 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_26_mid2_fu_459_p3 = ((tmp_28_reg_1001[0:0] === 1'b1) ? icmp_reg_986 : icmp2_reg_1023);

assign tmp_27_fu_357_p2 = (($signed(tmp_cast_mid1_fu_326_p1) > $signed(tmp_s_fu_307_p2)) ? 1'b1 : 1'b0);

assign tmp_27_mid1_fu_428_p2 = ((i_V_fu_397_p2 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_27_mid2_fu_464_p3 = ((tmp_28_reg_1001[0:0] === 1'b1) ? tmp_26_reg_991 : tmp_27_mid1_reg_1028);

assign tmp_28_fu_366_p2 = ((tmp_30_cast_fu_362_p1 < ret_V_4_fu_289_p2) ? 1'b1 : 1'b0);

assign tmp_28_mid1_fu_434_p2 = (($signed(tmp_cast_fu_403_p1) > $signed(tmp_s_fu_307_p2)) ? 1'b1 : 1'b0);

assign tmp_28_mid2_fu_469_p3 = ((tmp_28_reg_1001[0:0] === 1'b1) ? tmp_27_reg_996 : tmp_28_mid1_reg_1033);

assign tmp_29_fu_478_p2 = ((col_assign_mid2_fu_447_p3 < src_cols_V) ? 1'b1 : 1'b0);

assign tmp_30_cast_fu_362_p1 = t_V_2_reg_254;

assign tmp_30_cast_mid2_cas_fu_474_p1 = col_assign_mid2_fu_447_p3;

assign tmp_31_fu_494_p1 = col_assign_mid2_fu_447_p3;

assign tmp_32_fu_514_p1 = col_assign_mid2_reg_1043;

assign tmp_34_fu_563_p2 = (($signed(tmp_30_cast_mid2_cas_reg_1066) > $signed(ret_V_5_fu_312_p2)) ? 1'b1 : 1'b0);

assign tmp_35_fu_583_p1 = win_val_1_1_fu_128;

assign tmp_36_fu_587_p2 = (($signed(tmp_35_fu_583_p1) < $signed(threshold_low)) ? 1'b1 : 1'b0);

assign tmp_37_fu_592_p1 = win_val_0_0_0_win_va_fu_541_p3;

assign tmp_38_fu_596_p1 = win_val_0_1_fu_120;

assign tmp_39_fu_600_p1 = win_val_0_1_2_load_reg_966;

assign tmp_40_fu_603_p1 = win_val_1_0_0_win_va_fu_534_p3;

assign tmp_41_fu_607_p1 = win_val_1_1_2_load_reg_971;

assign tmp_42_fu_610_p1 = win_val_2_0_0_win_va_fu_527_p3;

assign tmp_43_fu_614_p1 = win_val_2_1_fu_136;

assign tmp_44_fu_618_p1 = win_val_2_1_2_load_reg_976;

assign tmp_45_fu_805_p2 = (tmp_55_demorgan_fu_800_p2 ^ 1'd1);

assign tmp_46_fu_412_p4 = {{i_V_fu_397_p2[31:1]}};

assign tmp_47_fu_820_p2 = ((col_assign_mid2_reg_1043 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_50_fu_548_p4 = {{col_assign_mid2_reg_1043[31:1]}};

assign tmp_55_demorgan_fu_800_p2 = (tmp_36_reg_1102 | tmp34_fu_795_p2);

assign tmp_cast_fu_403_p1 = i_V_fu_397_p2;

assign tmp_cast_mid1_fu_326_p1 = t_V_reg_243;

assign tmp_fu_335_p4 = {{t_V_reg_243[31:1]}};

assign tmp_s_fu_307_p2 = ($signed(lhs_V_cast_fu_275_p1) + $signed(33'd8589934591));

assign win_val_0_0_0_win_va_fu_541_p3 = ((tmp_29_reg_1071[0:0] === 1'b1) ? element_gd_1_fu_152 : win_val_0_1_fu_120);

assign win_val_1_0_0_win_va_fu_534_p3 = ((tmp_29_reg_1071[0:0] === 1'b1) ? tmp0_1_fu_148 : win_val_1_1_fu_128);

assign win_val_2_0_0_win_va_fu_527_p3 = ((tmp_29_reg_1071[0:0] === 1'b1) ? tmp1_1_fu_144 : win_val_2_1_fu_136);

always @ (posedge ap_clk) begin
    tmp_30_cast_mid2_cas_reg_1066[32] <= 1'b0;
end

endmodule //hysteresis