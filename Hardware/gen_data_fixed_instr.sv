`timescale 1 ns / 1 ps

module gen_data(
	input 					clk,
	input 					resetn,

	output	reg 			data_in_valid,
	output	reg 	[133:0]	data_in,
	input					data_out_valid,
	input			[133:0]	data_out
);
	/** regs:
	*		memory[64KB] used to store instruction; 
	*/
	
	wire [1023:0][31:0] memory = {
		/**write_fix_instr*/
		32'h0040006f,
		32'h00000093,
		32'h00000113,
		32'h00000193,
		32'h00000213,
		32'h00000293,
		32'h00000313,
		32'h00000393,
		32'h00000413,
		32'h00000493,
		32'h00000513,
		32'h00000593,
		32'h00000613,
		32'h00000693,
		32'h00000713,
		32'h00000793,
		32'h00000813,
		32'h00000893,
		32'h00000913,
		32'h00000993,
		32'h00000a13,
		32'h00000a93,
		32'h00000b13,
		32'h00000b93,
		32'h00000c13,
		32'h00000c93,
		32'h00000d13,
		32'h00000d93,
		32'h00000e13,
		32'h00000e93,
		32'h00000f13,
		32'h00000f93,
		32'h00010137,
		32'hdeadc1b7,
		32'heef18193,
		32'h00018213,
		32'h148000ef,
		32'h10000537,
		32'h04400593,
		32'h04f00613,
		32'h04e00693,
		32'h04500713,
		32'h00a00793,
		32'h00b52023,
		32'h00c52023,
		32'h00d52023,
		32'h00e52023,
		32'h00f52023,
		32'h20000537,
		32'h075bd5b7,
		32'hd1558593,
		32'h00b52023,
		32'h00100073,
		32'hdc227139,
		32'hde06d64e,
		32'hd84ada26,
		32'hd256d452,
		32'h89ae842a,
		32'h03000793,
		32'h0793e219,
		32'h890a0200,
		32'h0ff7fa13,
		32'h84ca8aca,
		32'h4f63e015,
		32'h04130330,
		32'h09130200,
		32'h9c6302e0,
		32'h50f20354,
		32'h54d25462,
		32'h59b25942,
		32'h5a925a22,
		32'h80826121,
		32'h852245a9,
		32'h05132531,
		32'h00230305,
		32'h852200a9,
		32'h2b5d45a9,
		32'h19fd842a,
		32'hb7c10905,
		32'h01490023,
		32'hc783b7fd,
		32'h9863fff4,
		32'hc7830087,
		32'h9463ffe4,
		32'h8fa30087,
		32'hc503ff24,
		32'h14fdfff4,
		32'hb77528c1,
		32'hc6061141,
		32'hc226c422,
		32'hc0002473,
		32'hc02024f3,
		32'h05134501,
		32'h20c97b00,
		32'h45a14601,
		32'h3f998522,
		32'h05134501,
		32'h284d7c80,
		32'h45a14601,
		32'h37998526,
		32'h05134501,
		32'h204d7e00,
		32'h852285a6,
		32'h460123b1,
		32'h3f0d4581,
		32'h05134501,
		32'h20797e80,
		32'h00141513,
		32'h050e9522,
		32'h85a69522,
		32'h233d050a,
		32'h06400593,
		32'h46052b85,
		32'h37394589,
		32'h40b24422,
		32'h65054492,
		32'h91c50513,
		32'ha08d0141,
		32'hff010113,
		32'h00812423,
		32'h00001437,
		32'h91c40513,
		32'h00112623,
		32'h00912223,
		32'h048000ef,
		32'h000014b7,
		32'h81c48513,
		32'h03c000ef,
		32'h00001537,
		32'h83050513,
		32'h030000ef,
		32'h81c48513,
		32'h028000ef,
		32'h91c40513,
		32'h00812403,
		32'h00c12083,
		32'h00412483,
		32'h01010113,
		32'h0100006f,
		32'h100007b7,
		32'h00a7a023,
		32'h00008067,
		32'h10000737,
		32'h00054783,
		32'h00079463,
		32'h00008067,
		32'h00150513,
		32'h00f72023,
		32'hfedff06f,
		32'hfe010113,
		32'h00812c23,
		32'h00410413,
		32'h00912a23,
		32'h01212823,
		32'h00112e23,
		32'h00050493,
		32'h00040913,
		32'h02049c63,
		32'h03240a63,
		32'h10000737,
		32'hfff44783,
		32'hfff40413,
		32'h03078793,
		32'h00f72023,
		32'hff2418e3,
		32'h01c12083,
		32'h01812403,
		32'h01412483,
		32'h01012903,
		32'h02010113,
		32'h00008067,
		32'h00a00593,
		32'h00048513,
		32'h47c000ef,
		32'h00a40023,
		32'h00a00593,
		32'h00048513,
		32'h424000ef,
		32'h00140413,
		32'h00050493,
		32'hfa5ff06f,
		32'hfff58593,
		32'h00001737,
		32'h00259593,
		32'h86070713,
		32'h100006b7,
		32'h0005d463,
		32'h00008067,
		32'h00b557b3,
		32'h00f7f793,
		32'h00f707b3,
		32'h0007c783,
		32'hffc58593,
		32'h00f6a023,
		32'hfe1ff06f,
		32'hfb010113,
		32'h04812423,
		32'h05212023,
		32'h03312e23,
		32'h04112623,
		32'h04912223,
		32'h03412c23,
		32'h03512a23,
		32'h03612823,
		32'h03712623,
		32'h03812423,
		32'h03912223,
		32'h03a12023,
		32'h01b12e23,
		32'h0065f993,
		32'h00050913,
		32'h00058413,
		32'h08098863,
		32'h00052703,
		32'h00177693,
		32'hffc70793,
		32'h00068463,
		32'hffd70793,
		32'h0007d483,
		32'h00300713,
		32'h0034f613,
		32'h00e61863,
		32'h0027d783,
		32'h01079793,
		32'h00f4e4b3,
		32'h0034fa13,
		32'hffda0793,
		32'h00f037b3,
		32'h04d78863,
		32'h00001537,
		32'h89850513,
		32'he9dff0ef,
		32'h00092503,
		32'h00800593,
		32'hf2dff0ef,
		32'h00001537,
		32'h8d450513,
		32'he85ff0ef,
		32'h00300793,
		32'h00800593,
		32'h00fa0463,
		32'h00400593,
		32'h00048513,
		32'hf09ff0ef,
		32'h00001537,
		32'h91c50513,
		32'he61ff0ef,
		32'h00100073,
		32'h01047793,
		32'h00078a63,
		32'h00001737,
		32'ha0072783,
		32'h00178793,
		32'ha0f72023,
		32'h02047793,
		32'h00078a63,
		32'h00001737,
		32'h9fc72783,
		32'h00178793,
		32'h9ef72e23,
		32'h00147793,
		32'h00078a63,
		32'h00001737,
		32'h9f872783,
		32'h00178793,
		32'h9ef72c23,
		32'h1c098263,
		32'h00092783,
		32'h0017f713,
		32'hffc78a93,
		32'h00070463,
		32'hffd78a93,
		32'h000ada03,
		32'h00300793,
		32'h003a7713,
		32'h00f71863,
		32'h002ad783,
		32'h01079793,
		32'h00fa6a33,
		32'h000014b7,
		32'h91c48513,
		32'hdd5ff0ef,
		32'h000019b7,
		32'h8e098513,
		32'hdc9ff0ef,
		32'h00247793,
		32'h02078e63,
		32'h001007b7,
		32'h07378793,
		32'h00fa0863,
		32'h000097b7,
		32'h00278793,
		32'h18fa1e63,
		32'h00001537,
		32'h92050513,
		32'hd9dff0ef,
		32'h00800593,
		32'h000a8513,
		32'he2dff0ef,
		32'h91c48513,
		32'hd89ff0ef,
		32'h00447413,
		32'h04040663,
		32'h00001537,
		32'h96050513,
		32'hd75ff0ef,
		32'h00800593,
		32'h000a8513,
		32'he05ff0ef,
		32'h00001537,
		32'h95850513,
		32'hd5dff0ef,
		32'h003a7793,
		32'h00300713,
		32'h00800593,
		32'h00e78463,
		32'h00400593,
		32'h000a0513,
		32'hdddff0ef,
		32'h91c48513,
		32'hd39ff0ef,
		32'h00001b37,
		32'h00000a93,
		32'h00900c93,
		32'h01300d13,
		32'h00001db7,
		32'h890b0b13,
		32'h91c48793,
		32'h000a8413,
		32'h00000a13,
		32'h01d00c13,
		32'h00300b93,
		32'h00f12623,
		32'h12041c63,
		32'h980d8513,
		32'hcfdff0ef,
		32'h00241793,
		32'h00f907b3,
		32'h0007a503,
		32'h00800593,
		32'hd85ff0ef,
		32'h00c12503,
		32'h017a0463,
		32'h000b0513,
		32'hcd9ff0ef,
		32'h001a0a13,
		32'h00400793,
		32'h00840413,
		32'hfcfa12e3,
		32'h001a8a93,
		32'h00800793,
		32'hfafa90e3,
		32'h8e098513,
		32'hcb5ff0ef,
		32'h00001537,
		32'h98850513,
		32'hca9ff0ef,
		32'h000017b7,
		32'ha007a503,
		32'hcb9ff0ef,
		32'h91c48513,
		32'hc95ff0ef,
		32'h00001537,
		32'h9b050513,
		32'hc89ff0ef,
		32'h000017b7,
		32'h9fc7a503,
		32'hc99ff0ef,
		32'h91c48513,
		32'hc75ff0ef,
		32'h00001537,
		32'h9d850513,
		32'hc69ff0ef,
		32'h000017b7,
		32'h9f87a503,
		32'hc79ff0ef,
		32'h91c48513,
		32'hc55ff0ef,
		32'h00100073,
		32'h04c12083,
		32'h04812403,
		32'h04412483,
		32'h03c12983,
		32'h03812a03,
		32'h03412a83,
		32'h03012b03,
		32'h02c12b83,
		32'h02812c03,
		32'h02412c83,
		32'h02012d03,
		32'h01c12d83,
		32'h00090513,
		32'h04012903,
		32'h05010113,
		32'h00008067,
		32'h00001537,
		32'h93c50513,
		32'hc05ff0ef,
		32'h00800593,
		32'h000a8513,
		32'hc95ff0ef,
		32'h00001537,
		32'h95850513,
		32'hbedff0ef,
		32'h003a7793,
		32'h00300713,
		32'h00800593,
		32'h00e78463,
		32'h00400593,
		32'h000a0513,
		32'he41ff06f,
		32'h07800513,
		32'h028cc463,
		32'hbb9ff0ef,
		32'h03040513,
		32'h0ff57513,
		32'hbadff0ef,
		32'h02000513,
		32'hba5ff0ef,
		32'h02000513,
		32'hb9dff0ef,
		32'headff06f,
		32'h008d4e63,
		32'hb91ff0ef,
		32'h03100513,
		32'hb89ff0ef,
		32'h02640513,
		32'h0ff57513,
		32'hfd9ff06f,
		32'h008c4c63,
		32'hb75ff0ef,
		32'h03200513,
		32'hb6dff0ef,
		32'h01c40513,
		32'hfe5ff06f,
		32'hb61ff0ef,
		32'h03300513,
		32'hb59ff0ef,
		32'h01240513,
		32'hfd1ff06f,
		32'h06054063,
		32'h0605c663,
		32'h00058613,
		32'h00050593,
		32'hfff00513,
		32'h02060c63,
		32'h00100693,
		32'h00b67a63,
		32'h00c05863,
		32'h00161613,
		32'h00169693,
		32'hfeb66ae3,
		32'h00000513,
		32'h00c5e663,
		32'h40c585b3,
		32'h00d56533,
		32'h0016d693,
		32'h00165613,
		32'hfe0696e3,
		32'h00008067,
		32'h00008293,
		32'hfb5ff0ef,
		32'h00058513,
		32'h00028067,
		32'h40a00533,
		32'h0005d863,
		32'h40b005b3,
		32'hf9dff06f,
		32'h40b005b3,
		32'h00008293,
		32'hf91ff0ef,
		32'h40a00533,
		32'h00028067,
		32'h00008293,
		32'h0005ca63,
		32'h00054c63,
		32'hf79ff0ef,
		32'h00058513,
		32'h00028067,
		32'h40b005b3,
		32'hfe0558e3,
		32'h40a00533,
		32'hf61ff0ef,
		32'h40b00533,
		32'h00028067,
		32'h00001941,
		32'h73697200,
		32'h01007663,
		32'h0000000f,
		32'h33767205,
		32'h70326932,
		32'h00000030,
		32'h6c637943,
		32'h6f632065,
		32'h65746e75,
		32'h2e2e2072,
		32'h2e2e2e2e,
		32'h00002e2e,
		32'h736e490a,
		32'h63757274,
		32'h6e6f6974,
		32'h756f6320,
		32'h7265746e,
		32'h002e2e20,
		32'h4950430a,
		32'h0000203a,
		32'h4347002e,
		32'h28203a43,
		32'h29554e47,
		32'h322e3920,
		32'h4100302e,
		32'h00000020,
		32'h63736972,
		32'h16010076,
		32'h04000000,
		32'h76720510,
		32'h32693233,
		32'h635f3070,
		32'h00307032,
		32'h3d3d3d3d,
		32'h3d3d3d3d,
		32'h3d3d3d3d,
		32'h0a3d3d3d,
		32'h00000000,
		32'h6c6c6548,
		32'h41202c6f,
		32'h6d75546f,
		32'h0a216e61,
		32'h001b4100,
		32'h69720000,
		32'h00766373,
		32'h00001101,
		32'h05100400,
		32'h32337672,
		32'h30703269,
		32'h00000000,
		32'h33323130,
		32'h37363534,
		32'h42413938,
		32'h46454443,
		32'h001b4100,
		32'h69720000,
		32'h00766373,
		32'h00001101,
		32'h05100400,
		32'h32337672,
		32'h30703269,
		32'h00000000,
		32'h20202020,
		32'h00000000,
		32'h6d73694d,
		32'h68637461,
		32'h74656220,
		32'h6e656577,
		32'h20307120,
		32'h2042534c,
		32'h20646e61,
		32'h6f636564,
		32'h20646564,
		32'h74736e69,
		32'h74637572,
		32'h206e6f69,
		32'h64726f77,
		32'h30712021,
		32'h0078303d,
		32'h6e69202c,
		32'h3d727473,
		32'h00007830,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h2d2d2d2d,
		32'h0000000a,
		32'h45524245,
		32'h69204b41,
		32'h7274736e,
		32'h69746375,
		32'h61206e6f,
		32'h78302074,
		32'h00000000,
		32'h656c6c49,
		32'h206c6167,
		32'h74736e49,
		32'h74637572,
		32'h206e6f69,
		32'h30207461,
		32'h00000078,
		32'h7830203a,
		32'h00000000,
		32'h20737542,
		32'h6f727265,
		32'h6e692072,
		32'h736e4920,
		32'h63757274,
		32'h6e6f6974,
		32'h20746120,
		32'h00007830,
		32'h20206370,
		32'h00000000,
		32'h626d754e,
		32'h6f207265,
		32'h61662066,
		32'h65207473,
		32'h72657478,
		32'h206c616e,
		32'h73515249,
		32'h756f6320,
		32'h6465746e,
		32'h0000203a,
		32'h626d754e,
		32'h6f207265,
		32'h6c732066,
		32'h6520776f,
		32'h72657478,
		32'h206c616e,
		32'h73515249,
		32'h756f6320,
		32'h6465746e,
		32'h0000203a,
		32'h626d754e,
		32'h6f207265,
		32'h69742066,
		32'h2072656d,
		32'h73515249,
		32'h756f6320,
		32'h6465746e,
		32'h0000203a,
		32'h00000000,
		32'h00000000,
		32'h00000000,
		32'h00001b41,
		32'h73697200,
		32'h01007663,
		32'h00000011,
		32'h72051004,
		32'h69323376,
		32'h00307032,
		32'h00001941,
		32'h73697200,
		32'h01007663,
		32'h0000000f,
		32'h33767205,
		32'h70326932,
		32'h00000030,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0,
		32'h0
    };

	// reg 	[31:0] 	memory [0:64*1024/4-1];
	
	reg 	[13:0] 	addr_q;
    wire 	[31:0]	memory_data;
    reg 	[31:0]	addr_conf;

    reg 	[3:0]	count;

     always @* begin
    	addr_q <= 13'h3ff - addr_conf[9:0];
    end
	assign memory_data = memory[addr_q];

    reg [3:0]	state_mem;
    parameter 	IDLE_S 		= 4'd0,
    			FAKE_DATA_S	= 4'd1,
    			CONF_TCM_S	= 4'd2,
    			CONF_TCM_1_S= 4'd3,
    			CONF_TCM_2_S= 4'd4,
				CONF_SEL_1_S= 4'd5,
				CONF_SEL_2_S= 4'd6,
    			READY_S		= 4'd7,
				READ_1_S	= 4'd8,
				READ_2_S	= 4'd9,
				READ_3_S	= 4'd10,
				READ_4_S	= 4'd11,
				READ_5_S	= 4'd12,
				READ_6_S	= 4'd13,
				WRITE_END_S	= 4'd14;

	always @(posedge clk or negedge resetn) begin
		if (!resetn) begin
			// reset
//			addr_q 		<= 14'h400;
			state_mem 	<= IDLE_S;

			data_in_valid	<= 1'b0;
			data_in 		<= 134'b0;
			count			<= 4'b0;
			addr_conf		<= 32'b0;
		end
		else begin
			case(state_mem)
				IDLE_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= FAKE_DATA_S;
					count 			<= 4'b0;
				end
				FAKE_DATA_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9001,16'b0};
						4'd2: data_in <= {2'b11, 4'b0, 112'd1,16'b0};
						4'd3: data_in <= {2'b11, 4'b0, 112'd2,16'b0};
						4'd4: data_in <= {2'b11, 4'b0, 112'd3,16'b0};
						4'd5: data_in <= {2'b10, 4'b0, 112'd4,16'b0};
						default: begin
						end
					endcase
					if(count == 4'd5)
						state_mem <= CONF_TCM_S;
				end
				CONF_TCM_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= CONF_TCM_1_S;
					count 			<= 4'b0;
				end
				CONF_TCM_1_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9003,16'b0};
						default: begin
						end
					endcase
					if(count == 4'd1)
						state_mem <= CONF_TCM_2_S;
					//addr_q <= 14'h3ff;
					addr_conf <= 32'b0;
				end
				CONF_TCM_2_S: begin
					addr_conf 	<= addr_conf + 32'd1;
					//addr_q 		<= addr_q - 14'd1;
					data_in[131:0] <= {4'b0, 48'd0, memory_data, addr_conf,16'b0};
					if(addr_conf == 32'd1023) begin
						state_mem <= READ_1_S;
						data_in[133:132] <= {2'b10};
					end
					else begin
						state_mem <= CONF_TCM_2_S;
						data_in[133:132] <= {2'b11};
					end
				end
				CONF_SEL_1_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= CONF_SEL_2_S;
					count 			<= 4'b0;
				end
				CONF_SEL_2_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9001,16'b0};
						4'd2: data_in <= {2'b11, 4'b0, 128'd0};
						4'd3: data_in <= {2'b11, 4'b0, 128'd1};
						4'd4: data_in <= {2'b11, 4'b0, 128'd2};
						4'd5: data_in <= {2'b10, 4'b0, 128'd3};
						default: begin
						end
					endcase
					if(count == 4'd5)
						state_mem <= READY_S;
				end
				READ_1_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= READ_2_S;
					count 			<= 4'b0;
				end
				READ_2_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9002,16'b0};
						4'd2: data_in <= {2'b11, 4'b0, 128'd1};
						4'd3: data_in <= {2'b11, 4'b0, 128'd2};
						4'd4: data_in <= {2'b11, 4'b0, 128'd3};
						4'd5: data_in <= {2'b10, 4'b0, 128'd4};
						default: begin
						end
					endcase
					if(count == 4'd5)
						state_mem <= READ_3_S;
				end
				READ_3_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= READ_4_S;
					count 			<= 4'b0;
				end
				READ_4_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9004,16'b0};
						4'd2: data_in <= {2'b11, 4'b0, 112'd128,16'b0};
						4'd3: data_in <= {2'b11, 4'b0, 128'd2};
						4'd4: data_in <= {2'b11, 4'b0, 128'd3};
						4'd5: data_in <= {2'b10, 4'b0, 128'd4};
						default: begin
						end
					endcase
					if(count == 4'd5)
						state_mem <= READ_5_S;
				end
				READ_5_S: begin
					data_in_valid 	<= 1'b1;
					data_in 		<= {2'b01,4'b0,128'b0};
					state_mem 		<= READ_6_S;
					count 			<= 4'b0;
				end
				READ_6_S: begin
					count <= count + 4'd1;
					case(count)
						4'd0: data_in <= {2'b11, 4'b0, 128'd0};
						4'd1: data_in <= {2'b11, 4'b0, 96'b0,16'h9004,16'b0};
						4'd2: data_in <= {2'b11, 4'b0, 112'd129,16'b0};
						4'd3: data_in <= {2'b11, 4'b0, 128'd2};
						4'd4: data_in <= {2'b11, 4'b0, 128'd3};
						4'd5: data_in <= {2'b10, 4'b0, 128'd4};
						default: begin
						end
					endcase
					if(count == 4'd5)
						state_mem <= CONF_SEL_1_S;
				end
				READY_S: begin
					data_in_valid <= 1'b0;
					state_mem <= READY_S;
				end
				default: begin
					state_mem <= IDLE_S;
				end
			endcase
		end
	end


endmodule