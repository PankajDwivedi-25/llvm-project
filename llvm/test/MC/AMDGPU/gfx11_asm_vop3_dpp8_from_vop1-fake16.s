// RUN: llvm-mc -triple=amdgcn -mcpu=gfx1100 -mattr=-real-true16,+wavefrontsize32 -show-encoding %s | FileCheck --check-prefix=GFX11 %s

v_ceil_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xdc,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_ceil_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xdc,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_ceil_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xdc,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_ceil_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xdc,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_floor_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xdb,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_floor_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xdb,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_floor_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xdb,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_floor_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xdb,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_rcp_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd4,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_rcp_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd4,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_rcp_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xd4,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_rcp_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xd4,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_sqrt_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd5,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_sqrt_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd5,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_sqrt_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xd5,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_sqrt_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xd5,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_rsq_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd6,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_rsq_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd6,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_rsq_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xd6,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_rsq_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xd6,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_log_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd7,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_log_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd7,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_log_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xd7,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_log_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xd7,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]

v_exp_f16_e64_dpp v5, v1 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd8,0xd5,0xe9,0x00,0x00,0x00,0x01,0x77,0x39,0x05]

v_exp_f16_e64_dpp v5, v1 mul:2 dpp8:[7,6,5,4,3,2,1,0]
// GFX11: [0x05,0x00,0xd8,0xd5,0xe9,0x00,0x00,0x08,0x01,0x77,0x39,0x05]

v_exp_f16_e64_dpp v5, v1 mul:4 dpp8:[7,6,5,4,3,2,1,0] fi:1
// GFX11: [0x05,0x00,0xd8,0xd5,0xea,0x00,0x00,0x10,0x01,0x77,0x39,0x05]

v_exp_f16_e64_dpp v255, -|v255| clamp div:2 dpp8:[0,0,0,0,0,0,0,0] fi:0
// GFX11: [0xff,0x81,0xd8,0xd5,0xe9,0x00,0x00,0x38,0xff,0x00,0x00,0x00]
