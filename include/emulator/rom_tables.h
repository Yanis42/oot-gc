#ifndef _ROM_TABLES_H
#define _ROM_TABLES_H

#include "dolphin/types.h"
#include "macros.h"

#if IS_JP

static u32 ganOffsetBlock_ZLJ[198] = {
    0x01685160, 0x016D376F, 0x016D3770, 0x0172B78F, 0x0172B790, 0x0175E1CF, 0x0175E1D0, 0x017BE4FF, 0x017BE500,
    0x0182EA4F, 0x0182EA50, 0x0189A76F, 0x0189A770, 0x0191AD0F, 0x0191AD10, 0x0198436F, 0x01984370, 0x019CA5CF,
    0x019CA5D0, 0x01A0942F, 0x01A09430, 0x01A71DEF, 0x01A71DF0, 0x01A950EF, 0x01A950F0, 0x01AAC75F, 0x01AAC760,
    0x01AC6D2F, 0x01AC6D30, 0x01ADA7CF, 0x01ADA7D0, 0x01AFD5EF, 0x01AFD5F0, 0x01B0F1BF, 0x01B0F1C0, 0x01B26F1F,
    0x01B26F20, 0x01B3767F, 0x01B37680, 0x01B4864F, 0x01B48650, 0x01B5775F, 0x01B57760, 0x01B774EF, 0x01B774F0,
    0x01B8FB7F, 0x01B8FB80, 0x01BA9BDF, 0x01BA9BE0, 0x01BB94DF, 0x01BB94E0, 0x01BCF94F, 0x01BCF950, 0x01BEB27F,
    0x01BEB280, 0x01C023AF, 0x01C023B0, 0x01C3165F, 0x01C31660, 0x01C341FF, 0x01C34200, 0x01C36C9F, 0x01C36CA0,
    0x01C41BFF, 0x01C41C00, 0x01C545EF, 0x01C545F0, 0x01C5C85F, 0x01C5C860, 0x01C64A2F, 0x01C64A30, 0x01C6D8FF,
    0x01C6D900, 0x01CADDAF, 0x01CADDB0, 0x01CB559F, 0x01CB55A0, 0x01CC11FF, 0x01CC1200, 0x01CCAD9F, 0x01CCADA0,
    0x01CD06CF, 0x01CD06D0, 0x01CDF62F, 0x01CDF630, 0x01CEEF0F, 0x01CEEF10, 0x01D007FF, 0x01D00800, 0x01D0DFDF,
    0x01D0DFE0, 0x01D0F5FF, 0x01D0F600, 0x01D148AF, 0x01D148B0, 0x01D1B0FF, 0x01D1B100, 0x01D2870F, 0x01D28710,
    0x01D29FFF, 0x01D2A000, 0x01D35B2F, 0x01D35B30, 0x01D3D55F, 0x01D3D560, 0x01D4366F, 0x01D43670, 0x01D487DF,
    0x01D487E0, 0x01D5193F, 0x01D51940, 0x01D56E6F, 0x01D56E70, 0x01D5F1FF, 0x01D5F200, 0x01D63CEF, 0x01D63CF0,
    0x01D6B4EF, 0x01D6B4F0, 0x01D72DAF, 0x01D72DB0, 0x01D7797F, 0x01D77980, 0x01D7CE2F, 0x01D7CE30, 0x01D8342F,
    0x01D83430, 0x01D8845F, 0x01D88460, 0x01D8DCEF, 0x01D8DCF0, 0x01D92C6F, 0x01D92C70, 0x01D9A38F, 0x01D9A390,
    0x01DA39EF, 0x01DA39F0, 0x01DB34CF, 0x01DB34D0, 0x01DBA48F, 0x01DBA490, 0x01DC53FF, 0x01DC5400, 0x01DCBB3F,
    0x01DCBB40, 0x01DD524F, 0x01DD5250, 0x01E0A42F, 0x01E0A430, 0x01E1BCDF, 0x01E1BCE0, 0x01E296DF, 0x01E296E0,
    0x01E3398F, 0x01E33990, 0x01E45A6F, 0x01E45A70, 0x01E4C74F, 0x01E4C750, 0x01E72C6F, 0x01E72C70, 0x01E80F5F,
    0x01E80F60, 0x01E90CAF, 0x01E90CB0, 0x01E9BC2F, 0x01E9BC30, 0x01EA6E9F, 0x01EA6EA0, 0x01EB30BF, 0x01EB30C0,
    0x01ECADFF, 0x01ECAE00, 0x01ED259F, 0x01ED25A0, 0x01EDD1EF, 0x01EDD1F0, 0x01EEB1CF, 0x01EEB1D0, 0x01EF793F,
    0x01EF7940, 0x01F0A15F, 0x01F0A160, 0x01F12BFF, 0x01F12C00, 0x01F1C5AF, 0x01F1C5B0, 0x01F2D9DF, 0x01F2D9E0,
    0x01F440CF, 0x01F440D0, 0x01F4D90F, 0x01F4D910, 0x01F5623F, 0x01F56240, 0x01F60C1F, 0x01F60C20, 0x01F7209F,
};

static u32 ganOffsetBlock_URAZLJ[198] = {
    0x01684BD0, 0x016D355F, 0x016D3560, 0x0172B9AF, 0x0172B9B0, 0x0175E9CF, 0x0175E9D0, 0x017BEE5F, 0x017BEE60,
    0x0182F2AF, 0x0182F2B0, 0x0189B35F, 0x0189B360, 0x0191BC0F, 0x0191BC10, 0x01985B8F, 0x01985B90, 0x019CBE9F,
    0x019CBEA0, 0x01A0AC2F, 0x01A0AC30, 0x01A7371F, 0x01A73720, 0x01A96A1F, 0x01A96A20, 0x01AAE08F, 0x01AAE090,
    0x01AC865F, 0x01AC8660, 0x01ADC0EF, 0x01ADC0F0, 0x01AFEF0F, 0x01AFEF10, 0x01B10ADF, 0x01B10AE0, 0x01B2883F,
    0x01B28840, 0x01B38F9F, 0x01B38FA0, 0x01B49F6F, 0x01B49F70, 0x01B5907F, 0x01B59080, 0x01B78E0F, 0x01B78E10,
    0x01B9149F, 0x01B914A0, 0x01BAB4FF, 0x01BAB500, 0x01BBADFF, 0x01BBAE00, 0x01BD126F, 0x01BD1270, 0x01BECB9F,
    0x01BECBA0, 0x01C03CDF, 0x01C03CE0, 0x01C32F8F, 0x01C32F90, 0x01C35B2F, 0x01C35B30, 0x01C385CF, 0x01C385D0,
    0x01C4352F, 0x01C43530, 0x01C55F1F, 0x01C55F20, 0x01C5E18F, 0x01C5E190, 0x01C6635F, 0x01C66360, 0x01C6F22F,
    0x01C6F230, 0x01CAF6DF, 0x01CAF6E0, 0x01CB6ECF, 0x01CB6ED0, 0x01CC2B2F, 0x01CC2B30, 0x01CCC6CF, 0x01CCC6D0,
    0x01CD1FFF, 0x01CD2000, 0x01CE0F5F, 0x01CE0F60, 0x01CF083F, 0x01CF0840, 0x01D0212F, 0x01D02130, 0x01D0F90F,
    0x01D0F910, 0x01D10F2F, 0x01D10F30, 0x01D161DF, 0x01D161E0, 0x01D1CA2F, 0x01D1CA30, 0x01D2A03F, 0x01D2A040,
    0x01D2B92F, 0x01D2B930, 0x01D3745F, 0x01D37460, 0x01D3EE8F, 0x01D3EE90, 0x01D44FAF, 0x01D44FB0, 0x01D4A11F,
    0x01D4A120, 0x01D5327F, 0x01D53280, 0x01D587AF, 0x01D587B0, 0x01D60B3F, 0x01D60B40, 0x01D6562F, 0x01D65630,
    0x01D6CE2F, 0x01D6CE30, 0x01D746EF, 0x01D746F0, 0x01D792BF, 0x01D792C0, 0x01D7E76F, 0x01D7E770, 0x01D84D6F,
    0x01D84D70, 0x01D89D9F, 0x01D89DA0, 0x01D8F62F, 0x01D8F630, 0x01D945AF, 0x01D945B0, 0x01D9BCCF, 0x01D9BCD0,
    0x01DA532F, 0x01DA5330, 0x01DB4E0F, 0x01DB4E10, 0x01DBBDCF, 0x01DBBDD0, 0x01DC6D3F, 0x01DC6D40, 0x01DCD47F,
    0x01DCD480, 0x01DD6B8F, 0x01DD6B90, 0x01E0BD6F, 0x01E0BD70, 0x01E1D61F, 0x01E1D620, 0x01E2B01F, 0x01E2B020,
    0x01E352CF, 0x01E352D0, 0x01E473AF, 0x01E473B0, 0x01E4E08F, 0x01E4E090, 0x01E745AF, 0x01E745B0, 0x01E8289F,
    0x01E828A0, 0x01E925EF, 0x01E925F0, 0x01E9D56F, 0x01E9D570, 0x01EA87DF, 0x01EA87E0, 0x01EB49FF, 0x01EB4A00,
    0x01ECC73F, 0x01ECC740, 0x01ED3EDF, 0x01ED3EE0, 0x01EDEB2F, 0x01EDEB30, 0x01EECB0F, 0x01EECB10, 0x01EF927F,
    0x01EF9280, 0x01F0BA9F, 0x01F0BAA0, 0x01F1453F, 0x01F14540, 0x01F1DEEF, 0x01F1DEF0, 0x01F2F31F, 0x01F2F320,
    0x01F45A0F, 0x01F45A10, 0x01F4F24F, 0x01F4F250, 0x01F57B7F, 0x01F57B80, 0x01F6255F, 0x01F62560, 0x01F739DF,
};

#elif IS_US

static u32 ganOffsetBlock_ZLE[198] = {
    0x01685440, 0x016D3A4F, 0x016D3A50, 0x0172BA5F, 0x0172BA60, 0x0175E48F, 0x0175E490, 0x017BE7AF, 0x017BE7B0,
    0x0182ECFF, 0x0182ED00, 0x0189AA1F, 0x0189AA20, 0x0191AFCF, 0x0191AFD0, 0x0198462F, 0x01984630, 0x019CA88F,
    0x019CA890, 0x01A096EF, 0x01A096F0, 0x01A720AF, 0x01A720B0, 0x01A953AF, 0x01A953B0, 0x01AACA1F, 0x01AACA20,
    0x01AC6FEF, 0x01AC6FF0, 0x01ADAA7F, 0x01ADAA80, 0x01AFD89F, 0x01AFD8A0, 0x01B0F46F, 0x01B0F470, 0x01B271CF,
    0x01B271D0, 0x01B3792F, 0x01B37930, 0x01B488FF, 0x01B48900, 0x01B57A0F, 0x01B57A10, 0x01B7779F, 0x01B777A0,
    0x01B8FE2F, 0x01B8FE30, 0x01BA9E8F, 0x01BA9E90, 0x01BB978F, 0x01BB9790, 0x01BCFBFF, 0x01BCFC00, 0x01BEB52F,
    0x01BEB530, 0x01C0266F, 0x01C02670, 0x01C3191F, 0x01C31920, 0x01C344BF, 0x01C344C0, 0x01C36F5F, 0x01C36F60,
    0x01C41EBF, 0x01C41EC0, 0x01C548AF, 0x01C548B0, 0x01C5CB1F, 0x01C5CB20, 0x01C64CEF, 0x01C64CF0, 0x01C6DBBF,
    0x01C6DBC0, 0x01CAE06F, 0x01CAE070, 0x01CB585F, 0x01CB5860, 0x01CC14BF, 0x01CC14C0, 0x01CCB05F, 0x01CCB060,
    0x01CD098F, 0x01CD0990, 0x01CDF8EF, 0x01CDF8F0, 0x01CEF1CF, 0x01CEF1D0, 0x01D00ABF, 0x01D00AC0, 0x01D0E29F,
    0x01D0E2A0, 0x01D0F8BF, 0x01D0F8C0, 0x01D14B6F, 0x01D14B70, 0x01D1B3BF, 0x01D1B3C0, 0x01D289CF, 0x01D289D0,
    0x01D2A2BF, 0x01D2A2C0, 0x01D35DEF, 0x01D35DF0, 0x01D3D81F, 0x01D3D820, 0x01D4393F, 0x01D43940, 0x01D48AAF,
    0x01D48AB0, 0x01D51C0F, 0x01D51C10, 0x01D5713F, 0x01D57140, 0x01D5F4CF, 0x01D5F4D0, 0x01D63FBF, 0x01D63FC0,
    0x01D6B7BF, 0x01D6B7C0, 0x01D7307F, 0x01D73080, 0x01D77C4F, 0x01D77C50, 0x01D7D0FF, 0x01D7D100, 0x01D836FF,
    0x01D83700, 0x01D8872F, 0x01D88730, 0x01D8DFBF, 0x01D8DFC0, 0x01D92F3F, 0x01D92F40, 0x01D9A65F, 0x01D9A660,
    0x01DA3CBF, 0x01DA3CC0, 0x01DB379F, 0x01DB37A0, 0x01DBA75F, 0x01DBA760, 0x01DC56CF, 0x01DC56D0, 0x01DCBE0F,
    0x01DCBE10, 0x01DD551F, 0x01DD5520, 0x01E0A6FF, 0x01E0A700, 0x01E1BFAF, 0x01E1BFB0, 0x01E299AF, 0x01E299B0,
    0x01E33C5F, 0x01E33C60, 0x01E45D3F, 0x01E45D40, 0x01E4CA1F, 0x01E4CA20, 0x01E72F3F, 0x01E72F40, 0x01E8122F,
    0x01E81230, 0x01E90F7F, 0x01E90F80, 0x01E9BEFF, 0x01E9BF00, 0x01EA716F, 0x01EA7170, 0x01EB338F, 0x01EB3390,
    0x01ECB0CF, 0x01ECB0D0, 0x01ED286F, 0x01ED2870, 0x01EDD4BF, 0x01EDD4C0, 0x01EEB49F, 0x01EEB4A0, 0x01EF7C0F,
    0x01EF7C10, 0x01F0A42F, 0x01F0A430, 0x01F12ECF, 0x01F12ED0, 0x01F1C87F, 0x01F1C880, 0x01F2DCAF, 0x01F2DCB0,
    0x01F4439F, 0x01F443A0, 0x01F4DBDF, 0x01F4DBE0, 0x01F5650F, 0x01F56510, 0x01F60EEF, 0x01F60EF0, 0x01F7236F,
};

static u32 ganOffsetBlock_URAZLE[198] = {
    0x01686520, 0x016D4EAF, 0x016D4EB0, 0x0172D2EF, 0x0172D2F0, 0x0176030F, 0x01760310, 0x017C079F, 0x017C07A0,
    0x01830BEF, 0x01830BF0, 0x0189CCAF, 0x0189CCB0, 0x0191D55F, 0x0191D560, 0x019874DF, 0x019874E0, 0x019CD7EF,
    0x019CD7F0, 0x01A0C57F, 0x01A0C580, 0x01A7506F, 0x01A75070, 0x01A9836F, 0x01A98370, 0x01AAF9DF, 0x01AAF9E0,
    0x01AC9FAF, 0x01AC9FB0, 0x01ADDA3F, 0x01ADDA40, 0x01B0085F, 0x01B00860, 0x01B1242F, 0x01B12430, 0x01B2A18F,
    0x01B2A190, 0x01B3A8EF, 0x01B3A8F0, 0x01B4B8BF, 0x01B4B8C0, 0x01B5A9CF, 0x01B5A9D0, 0x01B7A75F, 0x01B7A760,
    0x01B92DEF, 0x01B92DF0, 0x01BACE4F, 0x01BACE50, 0x01BBC74F, 0x01BBC750, 0x01BD2BBF, 0x01BD2BC0, 0x01BEE4EF,
    0x01BEE4F0, 0x01C0562F, 0x01C05630, 0x01C348DF, 0x01C348E0, 0x01C3747F, 0x01C37480, 0x01C39F1F, 0x01C39F20,
    0x01C44E7F, 0x01C44E80, 0x01C5786F, 0x01C57870, 0x01C5FADF, 0x01C5FAE0, 0x01C67CAF, 0x01C67CB0, 0x01C70B7F,
    0x01C70B80, 0x01CB102F, 0x01CB1030, 0x01CB881F, 0x01CB8820, 0x01CC447F, 0x01CC4480, 0x01CCE01F, 0x01CCE020,
    0x01CD394F, 0x01CD3950, 0x01CE28AF, 0x01CE28B0, 0x01CF218F, 0x01CF2190, 0x01D03A7F, 0x01D03A80, 0x01D1125F,
    0x01D11260, 0x01D1287F, 0x01D12880, 0x01D17B2F, 0x01D17B30, 0x01D1E37F, 0x01D1E380, 0x01D2B98F, 0x01D2B990,
    0x01D2D27F, 0x01D2D280, 0x01D38DAF, 0x01D38DB0, 0x01D407DF, 0x01D407E0, 0x01D468FF, 0x01D46900, 0x01D4BA6F,
    0x01D4BA70, 0x01D54BCF, 0x01D54BD0, 0x01D5A0FF, 0x01D5A100, 0x01D6248F, 0x01D62490, 0x01D66F7F, 0x01D66F80,
    0x01D6E77F, 0x01D6E780, 0x01D7603F, 0x01D76040, 0x01D7AC0F, 0x01D7AC10, 0x01D800BF, 0x01D800C0, 0x01D866BF,
    0x01D866C0, 0x01D8B6EF, 0x01D8B6F0, 0x01D90F7F, 0x01D90F80, 0x01D95EFF, 0x01D95F00, 0x01D9D61F, 0x01D9D620,
    0x01DA6C7F, 0x01DA6C80, 0x01DB675F, 0x01DB6760, 0x01DBD71F, 0x01DBD720, 0x01DC868F, 0x01DC8690, 0x01DCEDCF,
    0x01DCEDD0, 0x01DD84DF, 0x01DD84E0, 0x01E0D6BF, 0x01E0D6C0, 0x01E1EF6F, 0x01E1EF70, 0x01E2C96F, 0x01E2C970,
    0x01E36C1F, 0x01E36C20, 0x01E48CFF, 0x01E48D00, 0x01E4F9CF, 0x01E4F9D0, 0x01E75EEF, 0x01E75EF0, 0x01E841DF,
    0x01E841E0, 0x01E93F2F, 0x01E93F30, 0x01E9EEAF, 0x01E9EEB0, 0x01EAA11F, 0x01EAA120, 0x01EB633F, 0x01EB6340,
    0x01ECE07F, 0x01ECE080, 0x01ED581F, 0x01ED5820, 0x01EE046F, 0x01EE0470, 0x01EEE44F, 0x01EEE450, 0x01EFABBF,
    0x01EFABC0, 0x01F0D3DF, 0x01F0D3E0, 0x01F15E7F, 0x01F15E80, 0x01F1F82F, 0x01F1F830, 0x01F30C5F, 0x01F30C60,
    0x01F4734F, 0x01F47350, 0x01F50B8F, 0x01F50B90, 0x01F594BF, 0x01F594C0, 0x01F63E9F, 0x01F63EA0, 0x01F7531F,
};

#elif IS_EU

static u32 ganOffsetBlock_ZLP[198] = {
    0x0168E860, 0x016DCE6F, 0x016DCE70, 0x01734E7F, 0x01734E80, 0x017678BF, 0x017678C0, 0x017C7BEF, 0x017C7BF0,
    0x0183813F, 0x01838140, 0x018A3E5F, 0x018A3E60, 0x0192440F, 0x01924410, 0x0198DA6F, 0x0198DA70, 0x019D3CCF,
    0x019D3CD0, 0x01A12B2F, 0x01A12B30, 0x01A7B4DF, 0x01A7B4E0, 0x01A9E7DF, 0x01A9E7E0, 0x01AB5E4F, 0x01AB5E50,
    0x01AD041F, 0x01AD0420, 0x01AE3EAF, 0x01AE3EB0, 0x01B06CCF, 0x01B06CD0, 0x01B1889F, 0x01B188A0, 0x01B305FF,
    0x01B30600, 0x01B40D5F, 0x01B40D60, 0x01B51D2F, 0x01B51D30, 0x01B60E3F, 0x01B60E40, 0x01B80BCF, 0x01B80BD0,
    0x01B9925F, 0x01B99260, 0x01BB32BF, 0x01BB32C0, 0x01BC2BBF, 0x01BC2BC0, 0x01BD902F, 0x01BD9030, 0x01BF495F,
    0x01BF4960, 0x01C0BA9F, 0x01C0BAA0, 0x01C3AD4F, 0x01C3AD50, 0x01C3D8EF, 0x01C3D8F0, 0x01C4038F, 0x01C40390,
    0x01C4B2EF, 0x01C4B2F0, 0x01C5DCDF, 0x01C5DCE0, 0x01C65F4F, 0x01C65F50, 0x01C6E11F, 0x01C6E120, 0x01C76FEF,
    0x01C76FF0, 0x01CB749F, 0x01CB74A0, 0x01CBEC8F, 0x01CBEC90, 0x01CCA8EF, 0x01CCA8F0, 0x01CD448F, 0x01CD4490,
    0x01CD9DBF, 0x01CD9DC0, 0x01CE8D1F, 0x01CE8D20, 0x01CF85FF, 0x01CF8600, 0x01D09EEF, 0x01D09EF0, 0x01D176BF,
    0x01D176C0, 0x01D18CDF, 0x01D18CE0, 0x01D1DF8F, 0x01D1DF90, 0x01D247DF, 0x01D247E0, 0x01D31DEF, 0x01D31DF0,
    0x01D336CF, 0x01D336D0, 0x01D3F1FF, 0x01D3F200, 0x01D46C2F, 0x01D46C30, 0x01D4CD4F, 0x01D4CD50, 0x01D51EBF,
    0x01D51EC0, 0x01D5B01F, 0x01D5B020, 0x01D6054F, 0x01D60550, 0x01D688DF, 0x01D688E0, 0x01D6D3CF, 0x01D6D3D0,
    0x01D74BCF, 0x01D74BD0, 0x01D7C48F, 0x01D7C490, 0x01D8105F, 0x01D81060, 0x01D8650F, 0x01D86510, 0x01D8CB0F,
    0x01D8CB10, 0x01D91B3F, 0x01D91B40, 0x01D973CF, 0x01D973D0, 0x01D9C34F, 0x01D9C350, 0x01DA3A6F, 0x01DA3A70,
    0x01DAD0CF, 0x01DAD0D0, 0x01DBCBAF, 0x01DBCBB0, 0x01DC3B6F, 0x01DC3B70, 0x01DCEADF, 0x01DCEAE0, 0x01DD521F,
    0x01DD5220, 0x01DDE92F, 0x01DDE930, 0x01E13B0F, 0x01E13B10, 0x01E253BF, 0x01E253C0, 0x01E32DBF, 0x01E32DC0,
    0x01E3D06F, 0x01E3D070, 0x01E4F14F, 0x01E4F150, 0x01E55E2F, 0x01E55E30, 0x01E7C34F, 0x01E7C350, 0x01E8A63F,
    0x01E8A640, 0x01E9A38F, 0x01E9A390, 0x01EA530F, 0x01EA5310, 0x01EB057F, 0x01EB0580, 0x01EBC79F, 0x01EBC7A0,
    0x01ED44DF, 0x01ED44E0, 0x01EDBC7F, 0x01EDBC80, 0x01EE68CF, 0x01EE68D0, 0x01EF48AF, 0x01EF48B0, 0x01F0101F,
    0x01F01020, 0x01F1383F, 0x01F13840, 0x01F1C2DF, 0x01F1C2E0, 0x01F25C8F, 0x01F25C90, 0x01F370BF, 0x01F370C0,
    0x01F4D7AF, 0x01F4D7B0, 0x01F56FDF, 0x01F56FE0, 0x01F5F90F, 0x01F5F910, 0x01F6A2EF, 0x01F6A2F0, 0x01F7B76F,
};

static u32 ganOffsetBlock_URAZLP[198] = {
    0x0168F9B0, 0x016DE33F, 0x016DE340, 0x0173678F, 0x01736790, 0x017697AF, 0x017697B0, 0x017C9C3F, 0x017C9C40,
    0x0183A08F, 0x0183A090, 0x018A614F, 0x018A6150, 0x019269EF, 0x019269F0, 0x0199096F, 0x01990970, 0x019D6C7F,
    0x019D6C80, 0x01A15A0F, 0x01A15A10, 0x01A7E4FF, 0x01A7E500, 0x01AA17FF, 0x01AA1800, 0x01AB8E6F, 0x01AB8E70,
    0x01AD343F, 0x01AD3440, 0x01AE6ECF, 0x01AE6ED0, 0x01B09CEF, 0x01B09CF0, 0x01B1B8BF, 0x01B1B8C0, 0x01B3361F,
    0x01B33620, 0x01B43D7F, 0x01B43D80, 0x01B54D4F, 0x01B54D50, 0x01B63E5F, 0x01B63E60, 0x01B83BEF, 0x01B83BF0,
    0x01B9C27F, 0x01B9C280, 0x01BB62DF, 0x01BB62E0, 0x01BC5BDF, 0x01BC5BE0, 0x01BDC04F, 0x01BDC050, 0x01BF797F,
    0x01BF7980, 0x01C0EABF, 0x01C0EAC0, 0x01C3DD6F, 0x01C3DD70, 0x01C4090F, 0x01C40910, 0x01C433AF, 0x01C433B0,
    0x01C4E30F, 0x01C4E310, 0x01C60CFF, 0x01C60D00, 0x01C68F6F, 0x01C68F70, 0x01C7113F, 0x01C71140, 0x01C7A00F,
    0x01C7A010, 0x01CBA4BF, 0x01CBA4C0, 0x01CC1CAF, 0x01CC1CB0, 0x01CCD90F, 0x01CCD910, 0x01CD74AF, 0x01CD74B0,
    0x01CDCDDF, 0x01CDCDE0, 0x01CEBD3F, 0x01CEBD40, 0x01CFB61F, 0x01CFB620, 0x01D0CF0F, 0x01D0CF10, 0x01D1A6DF,
    0x01D1A6E0, 0x01D1BCFF, 0x01D1BD00, 0x01D20FAF, 0x01D20FB0, 0x01D277FF, 0x01D27800, 0x01D34E0F, 0x01D34E10,
    0x01D366FF, 0x01D36700, 0x01D4222F, 0x01D42230, 0x01D49C5F, 0x01D49C60, 0x01D4FD7F, 0x01D4FD80, 0x01D54EEF,
    0x01D54EF0, 0x01D5E04F, 0x01D5E050, 0x01D6357F, 0x01D63580, 0x01D6B90F, 0x01D6B910, 0x01D703FF, 0x01D70400,
    0x01D77BFF, 0x01D77C00, 0x01D7F4BF, 0x01D7F4C0, 0x01D8408F, 0x01D84090, 0x01D8953F, 0x01D89540, 0x01D8FB3F,
    0x01D8FB40, 0x01D94B6F, 0x01D94B70, 0x01D9A3FF, 0x01D9A400, 0x01D9F37F, 0x01D9F380, 0x01DA6A9F, 0x01DA6AA0,
    0x01DB00FF, 0x01DB0100, 0x01DBFBDF, 0x01DBFBE0, 0x01DC6B9F, 0x01DC6BA0, 0x01DD1B0F, 0x01DD1B10, 0x01DD824F,
    0x01DD8250, 0x01DE195F, 0x01DE1960, 0x01E16B3F, 0x01E16B40, 0x01E283EF, 0x01E283F0, 0x01E35DEF, 0x01E35DF0,
    0x01E4009F, 0x01E400A0, 0x01E5217F, 0x01E52180, 0x01E58E5F, 0x01E58E60, 0x01E7F37F, 0x01E7F380, 0x01E8D66F,
    0x01E8D670, 0x01E9D3BF, 0x01E9D3C0, 0x01EA833F, 0x01EA8340, 0x01EB35AF, 0x01EB35B0, 0x01EBF7CF, 0x01EBF7D0,
    0x01ED750F, 0x01ED7510, 0x01EDECAF, 0x01EDECB0, 0x01EE98FF, 0x01EE9900, 0x01EF78DF, 0x01EF78E0, 0x01F0404F,
    0x01F04050, 0x01F1686F, 0x01F16870, 0x01F1F30F, 0x01F1F310, 0x01F28CBF, 0x01F28CC0, 0x01F3A0EF, 0x01F3A0F0,
    0x01F507DF, 0x01F507E0, 0x01F5A01F, 0x01F5A020, 0x01F6294F, 0x01F62950, 0x01F6D32F, 0x01F6D330, 0x01F7E7AF,
};

#elif IS_MM

static u32 ganOffsetBlock_ZELDA2J[202] = {
    0x01648C50, 0x01676F8F, 0x01676F90, 0x01681B1F, 0x01681B20, 0x0168975F, 0x01689760, 0x016A226F, 0x016A2270,
    0x016AE9CF, 0x016AE9D0, 0x016C69BF, 0x016C69C0, 0x016CB66F, 0x016CB670, 0x016E070F, 0x016E0710, 0x017147CF,
    0x017147D0, 0x01725EEF, 0x01725EF0, 0x0173235F, 0x01732360, 0x0175C0CF, 0x0175C0D0, 0x017654AF, 0x017654B0,
    0x0178A6EF, 0x0178A6F0, 0x0179791F, 0x01797920, 0x017A6C9F, 0x017A6CA0, 0x017DD0AF, 0x017DD0B0, 0x017E699F,
    0x017E69A0, 0x018118DF, 0x018118E0, 0x01819ACF, 0x01819AD0, 0x0181D3EF, 0x0181D3F0, 0x01825C1F, 0x01825C20,
    0x0188440F, 0x01884410, 0x018889BF, 0x018889C0, 0x018C8E3F, 0x018C8E40, 0x018D761F, 0x018D7620, 0x018E409F,
    0x018E40A0, 0x018FE5EF, 0x018FE5F0, 0x0191331F, 0x01913320, 0x01932F5F, 0x01932F60, 0x0194C05F, 0x0194C060,
    0x0195C43F, 0x0195C440, 0x0197B90F, 0x0197B910, 0x019864CF, 0x019864D0, 0x019BB3CF, 0x019BB3D0, 0x019C4DAF,
    0x019C4DB0, 0x019D19EF, 0x019D19F0, 0x019E219F, 0x019E21A0, 0x019F47BF, 0x019F47C0, 0x01A0535F, 0x01A05360,
    0x01A10B0F, 0x01A10B10, 0x01A2AABF, 0x01A2AAC0, 0x01A2C80F, 0x01A2C810, 0x01A4F80F, 0x01A4F810, 0x01A6CF6F,
    0x01A6CF70, 0x01A700DF, 0x01A700E0, 0x01A7F46F, 0x01A7F470, 0x01A89B7F, 0x01A89B80, 0x01A9640F, 0x01A96410,
    0x01AA565F, 0x01AA5660, 0x01ABB1CF, 0x01ABB1D0, 0x01AC44AF, 0x01AC44B0, 0x01AD0D3F, 0x01AD0D40, 0x01ADCE7F,
    0x01ADCE80, 0x01AF3F3F, 0x01AF3F40, 0x01AFCA1F, 0x01AFCA20, 0x01B30BFF, 0x01B30C00, 0x01B3E6BF, 0x01B3E6C0,
    0x01B537BF, 0x01B537C0, 0x01B684CF, 0x01B684D0, 0x01BA8B9F, 0x01BA8BA0, 0x01BCA38F, 0x01BCA390, 0x01BF32BF,
    0x01BF32C0, 0x01C2086F, 0x01C20870, 0x01C3219F, 0x01C321A0, 0x01C3BAAF, 0x01C3BAB0, 0x01C486BF, 0x01C486C0,
    0x01C57FBF, 0x01C57FC0, 0x01C5E90F, 0x01C5E910, 0x01C93D8F, 0x01C93D90, 0x01C9D05F, 0x01C9D060, 0x01CA509F,
    0x01CA50A0, 0x01CBB1CF, 0x01CBB1D0, 0x01CC66FF, 0x01CC6700, 0x01CCD84F, 0x01CCD850, 0x01CE287F, 0x01CE2880,
    0x01CF6FDF, 0x01CF6FE0, 0x01D0EF1F, 0x01D0EF20, 0x01D1607F, 0x01D16080, 0x01D201FF, 0x01D20200, 0x01D3491F,
    0x01D34920, 0x01D3B03F, 0x01D3B040, 0x01D5215F, 0x01D52160, 0x01D6E70F, 0x01D6E710, 0x01D75DCF, 0x01D75DD0,
    0x01D8261F, 0x01D82620, 0x01D9A40F, 0x01D9A410, 0x01DAEF4F, 0x01DAEF50, 0x01DC0F9F, 0x01DC0FA0, 0x01DCBDFF,
    0x01DCBE00, 0x01DD668F, 0x01DD6690, 0x01DDB34F, 0x01DDB350, 0x01DE7FAF, 0x01DE7FB0, 0x01DFC6DF, 0x01DFC6E0,
    0x01E1B6CF, 0x01E1B6D0, 0x01E2EC8F, 0x01E2EC90, 0x01E3EC5F, 0x01E3EC60, 0x01E5D1CF, 0x01E5D1D0, 0x01E6AFBF,
    0x01E6AFC0, 0x01E6EAEF, 0x01E6EAF0, 0x01E95A6F,
};

static u32 ganOffsetBlock_ZELDA2E[202] = {
    0x01650C50, 0x0167EF8F, 0x0167EF90, 0x01689B1F, 0x01689B20, 0x0169175F, 0x01691760, 0x016AA26F, 0x016AA270,
    0x016B69CF, 0x016B69D0, 0x016CE9BF, 0x016CE9C0, 0x016D366F, 0x016D3670, 0x016E870F, 0x016E8710, 0x0171C7BF,
    0x0171C7C0, 0x0172DEDF, 0x0172DEE0, 0x0173A34F, 0x0173A350, 0x017640BF, 0x017640C0, 0x0176D49F, 0x0176D4A0,
    0x017926DF, 0x017926E0, 0x0179F90F, 0x0179F910, 0x017AEC8F, 0x017AEC90, 0x017E508F, 0x017E5090, 0x017EE97F,
    0x017EE980, 0x018198BF, 0x018198C0, 0x01821AAF, 0x01821AB0, 0x018253CF, 0x018253D0, 0x0182DBFF, 0x0182DC00,
    0x0188C3EF, 0x0188C3F0, 0x0189099F, 0x018909A0, 0x018D0E1F, 0x018D0E20, 0x018DF5FF, 0x018DF600, 0x018EC07F,
    0x018EC080, 0x019065CF, 0x019065D0, 0x0191B2FF, 0x0191B300, 0x0193AF3F, 0x0193AF40, 0x0195403F, 0x01954040,
    0x0196441F, 0x01964420, 0x019838EF, 0x019838F0, 0x0198E4AF, 0x0198E4B0, 0x019C33CF, 0x019C33D0, 0x019CCDAF,
    0x019CCDB0, 0x019D99EF, 0x019D99F0, 0x019EA19F, 0x019EA1A0, 0x019FC7BF, 0x019FC7C0, 0x01A0D35F, 0x01A0D360,
    0x01A18B0F, 0x01A18B10, 0x01A32ABF, 0x01A32AC0, 0x01A3480F, 0x01A34810, 0x01A5780F, 0x01A57810, 0x01A74F6F,
    0x01A74F70, 0x01A780DF, 0x01A780E0, 0x01A8746F, 0x01A87470, 0x01A91B7F, 0x01A91B80, 0x01A9E40F, 0x01A9E410,
    0x01AAD65F, 0x01AAD660, 0x01AC31CF, 0x01AC31D0, 0x01ACC4AF, 0x01ACC4B0, 0x01AD8D3F, 0x01AD8D40, 0x01AE4E7F,
    0x01AE4E80, 0x01AFBF3F, 0x01AFBF40, 0x01B04A1F, 0x01B04A20, 0x01B38BFF, 0x01B38C00, 0x01B466BF, 0x01B466C0,
    0x01B5B7BF, 0x01B5B7C0, 0x01B704CF, 0x01B704D0, 0x01BB0B9F, 0x01BB0BA0, 0x01BD238F, 0x01BD2390, 0x01BFB2BF,
    0x01BFB2C0, 0x01C2886F, 0x01C28870, 0x01C3A19F, 0x01C3A1A0, 0x01C43AAF, 0x01C43AB0, 0x01C506BF, 0x01C506C0,
    0x01C5FFBF, 0x01C5FFC0, 0x01C6690F, 0x01C66910, 0x01C9BD8F, 0x01C9BD90, 0x01CA505F, 0x01CA5060, 0x01CAD09F,
    0x01CAD0A0, 0x01CC31CF, 0x01CC31D0, 0x01CCE6FF, 0x01CCE700, 0x01CD584F, 0x01CD5850, 0x01CEA87F, 0x01CEA880,
    0x01CFEFDF, 0x01CFEFE0, 0x01D16F1F, 0x01D16F20, 0x01D1E07F, 0x01D1E080, 0x01D281FF, 0x01D28200, 0x01D3C91F,
    0x01D3C920, 0x01D4303F, 0x01D43040, 0x01D5A15F, 0x01D5A160, 0x01D7670F, 0x01D76710, 0x01D7DDCF, 0x01D7DDD0,
    0x01D8A61F, 0x01D8A620, 0x01DA240F, 0x01DA2410, 0x01DB6F5F, 0x01DB6F60, 0x01DC8FAF, 0x01DC8FB0, 0x01DD3E0F,
    0x01DD3E10, 0x01DDE69F, 0x01DDE6A0, 0x01DE335F, 0x01DE3360, 0x01DEFFBF, 0x01DEFFC0, 0x01E046EF, 0x01E046F0,
    0x01E236DF, 0x01E236E0, 0x01E36C9F, 0x01E36CA0, 0x01E46C6F, 0x01E46C70, 0x01E651DF, 0x01E651E0, 0x01E72FCF,
    0x01E72FD0, 0x01E76AFF, 0x01E76B00, 0x01E9DA6F,
};

static u16 gaPixelDisk1[1024] = {
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1580,
    0x1C80, 0x237E, 0x2781, 0x2C7C, 0x2F81, 0x317B, 0x3082, 0x2D7B, 0x2983, 0x257A, 0x2382, 0x1C7D, 0x1681, 0x107F,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1180, 0x247F, 0x3A81, 0x5279, 0x5F83, 0x7072, 0x7B85, 0x816F, 0x7E88, 0x736C, 0x668B, 0x576D,
    0x4F88, 0x3976, 0x2482, 0x117E, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1680, 0x217E, 0x3080, 0x4E78, 0x6882, 0x8370, 0x9184, 0xA36A, 0xAD87, 0xB267,
    0xAD8B, 0xA064, 0x9092, 0x7F64, 0x778F, 0x616F, 0x4B89, 0x317A, 0x2382, 0x177E, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x237F, 0x417A, 0x5C7F, 0x7B6E, 0x8C82, 0x9C69,
    0xA184, 0xA669, 0xA987, 0xA868, 0xA48B, 0x9966, 0x8F92, 0x8664, 0x8595, 0x7D6B, 0x7590, 0x5F76, 0x4986, 0x2A7C,
    0x1280, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x157F, 0x287D, 0x477C, 0x6C70,
    0x827D, 0x9963, 0xA381, 0xAA63, 0xAA84, 0xAA68, 0xA986, 0xA469, 0x9E8A, 0x9567, 0x8E94, 0x8B64, 0x8E98, 0x906A,
    0x9195, 0x8673, 0x758C, 0x507A, 0x2E83, 0x187E, 0x1280, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1480,
    0x247D, 0x4778, 0x6C79, 0x8A67, 0x8D7B, 0x965F, 0x9C80, 0xA262, 0xA783, 0xA867, 0xA886, 0xA369, 0x9D8A, 0x9467,
    0x8D94, 0x8964, 0x8C97, 0x8E6C, 0x8E95, 0x8E74, 0x8F90, 0x7678, 0x5386, 0x2D7D, 0x1680, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x107F, 0x1F7F, 0x4179, 0x6E70, 0x8A74, 0x9B5E, 0x9578, 0x935C, 0x967E, 0x9C61, 0xA282, 0xA766,
    0xA785, 0xA369, 0x9C8B, 0x9367, 0x8C95, 0x8865, 0x8B97, 0x8E6F, 0x8F95, 0x9676, 0x9F93, 0x9278, 0x7A8B, 0x4C7C,
    0x2582, 0x107F, 0x1080, 0x1080, 0x1080, 0x1080, 0x107F, 0x2B7E, 0x5C75, 0x856B, 0x9071, 0x965C, 0x9276, 0x925B,
    0x937C, 0x995F, 0xA081, 0xA565, 0xA685, 0xA269, 0x9B8B, 0x9267, 0x8C95, 0x8967, 0x8C96, 0x8F70, 0x9394, 0x9677,
    0x9A93, 0x9579, 0x8D8E, 0x647C, 0x3385, 0x127F, 0x1180, 0x1080, 0x1080, 0x1380, 0x1C7D, 0x477B, 0x7970, 0x9A65,
    0x966D, 0x945A, 0x9271, 0x915B, 0x9178, 0x965E, 0x9C7F, 0xA263, 0xA485, 0xA167, 0x998C, 0x9165, 0x8B95, 0x8B69,
    0x8E95, 0x9273, 0x9593, 0x9778, 0x9793, 0x987B, 0x9B91, 0x7C7D, 0x4F88, 0x247F, 0x1681, 0x1080, 0x1080, 0x1A7F,
    0x347A, 0x6277, 0x886D, 0x9F63, 0x996A, 0x955B, 0x946E, 0x935B, 0x9174, 0x945D, 0x997D, 0x9F62, 0xA384, 0xA065,
    0x988D, 0x9064, 0x8B95, 0x8C6C, 0x9195, 0x9676, 0x9692, 0x9679, 0x9493, 0x967C, 0x9A92, 0x857F, 0x668A, 0x3B7F,
    0x1C82, 0x1080, 0x107F, 0x227F, 0x4E77, 0x7E73, 0x966B, 0xA362, 0x9D68, 0x985C, 0x976A, 0x965C, 0x946F, 0x945C,
    0x9678, 0x9B61, 0xA181, 0xA167, 0x9C8A, 0x9568, 0x9292, 0x9270, 0x9792, 0x9A79, 0x9991, 0x987C, 0x9592, 0x977F,
    0x9C92, 0x9281, 0x808B, 0x5381, 0x2482, 0x1080, 0x107F, 0x267F, 0x5C75, 0x8B71, 0x9A6B, 0xA362, 0x9E68, 0x9B5E,
    0x9A69, 0x995E, 0x986B, 0x965C, 0x9572, 0x9960, 0xA07D, 0xA56B, 0xA486, 0xA06F, 0x9B8D, 0x9A74, 0x9D90, 0x9E7A,
    0x9C91, 0x9A7F, 0x9991, 0x9B82, 0x9E90, 0x9983, 0x8E8C, 0x6084, 0x2783, 0x1081, 0x107F, 0x2C7F, 0x6D73, 0x9D70,
    0xA069, 0xA263, 0xA168, 0x9F61, 0x9E67, 0x9D61, 0x9D67, 0x985E, 0x9570, 0x8D64, 0x847C, 0x7E72, 0x7F82, 0x8878,
    0x9788, 0xA279, 0xA18E, 0xA17F, 0x9E90, 0x9C84, 0x9C90, 0x9C86, 0x9E90, 0x9D87, 0x9C8D, 0x6E87, 0x2B83, 0x1082,
    0x107F, 0x2E7F, 0x7871, 0xA86F, 0xA367, 0xA264, 0xA167, 0xA062, 0xA068, 0x9F62, 0x9E66, 0x9A60, 0x9771, 0x7D68,
    0x5C7E, 0x4479, 0x4081, 0x5C7E, 0x8884, 0xA67C, 0xA38D, 0xA183, 0x9E90, 0x9C88, 0x9B90, 0x9C89, 0x9C90, 0x9E8A,
    0xA28E, 0x7489, 0x2E84, 0x1083, 0x107F, 0x317F, 0x806F, 0xB26F, 0xA865, 0xA266, 0xA265, 0xA266, 0xA266, 0xA166,
    0xA164, 0x9A65, 0x9473, 0x6E6E, 0x3F7F, 0x1B7D, 0x1580, 0x3C81, 0x7A82, 0xA37E, 0xA18B, 0x9F87, 0x9D8F, 0x9B8C,
    0x9A90, 0x998D, 0x9990, 0x9D8D, 0xA78F, 0x798C, 0x2F84, 0x1084, 0x107F, 0x317F, 0x826F, 0xB371, 0xA965, 0xA468,
    0xA365, 0xA369, 0xA364, 0xA26A, 0xA163, 0x986B, 0x8E73, 0x6871, 0x3B80, 0x1A7D, 0x1681, 0x3A80, 0x7481, 0x9C7D,
    0x9C8A, 0x9C89, 0x9B8F, 0x9990, 0x9890, 0x9790, 0x9790, 0x9C90, 0xA68F, 0x798E, 0x2F84, 0x1084, 0x107F, 0x2F7F,
    0x7A6F, 0xAC73, 0xA764, 0xA56C, 0xA363, 0xA26E, 0xA262, 0xA26F, 0xA361, 0x9972, 0x8D70, 0x7076, 0x517C, 0x3A7C,
    0x367F, 0x507E, 0x797F, 0x977F, 0x9B87, 0x9C8B, 0x9B8C, 0x9891, 0x978E, 0x9791, 0x978F, 0x9991, 0x9E8E, 0x718F,
    0x2D84, 0x1084, 0x107F, 0x2C7F, 0x706F, 0xA075, 0xA363, 0xA56F, 0xA261, 0xA171, 0xA160, 0xA173, 0xA360, 0x9D77,
    0x926B, 0x8079, 0x7378, 0x697A, 0x677D, 0x737B, 0x877E, 0x9781, 0x9C84, 0x9E8B, 0x9D89, 0x9A8F, 0x998C, 0x9990,
    0x998E, 0x9691, 0x958C, 0x688E, 0x2A83, 0x1084, 0x107F, 0x267F, 0x5C70, 0x8C78, 0x9C62, 0xA773, 0xA35F, 0xA074,
    0xA05F, 0xA177, 0xA55F, 0xA47C, 0x9F66, 0x997D, 0x9771, 0x937D, 0x9078, 0x917E, 0x957C, 0x9B85, 0x9F80, 0xA18C,
    0x9F85, 0x9D8E, 0x9C89, 0x9D8F, 0xA08B, 0x9590, 0x8789, 0x598C, 0x2583, 0x1083, 0x107F, 0x2180, 0x4B72, 0x7D79,
    0x9862, 0xA875, 0xA35E, 0x9F76, 0xA05E, 0xA27A, 0xA65F, 0xAA7E, 0xAD63, 0xAC81, 0xA66D, 0xA084, 0x9A76, 0x9987,
    0x9C7A, 0xA08A, 0xA27E, 0xA28C, 0xA183, 0xA08D, 0x9F86, 0xA28E, 0xA888, 0x988E, 0x7D87, 0x4D8A, 0x2182, 0x1082,
    0x107F, 0x1980, 0x3077, 0x5F7C, 0x8C64, 0xA878, 0xA35C, 0xA179, 0xA25D, 0xA67D, 0xAA60, 0xB180, 0xB764, 0xB884,
    0xB16C, 0xA988, 0xA174, 0x9E8C, 0xA079, 0xA28D, 0xA47D, 0xA38C, 0xA380, 0xA28C, 0xA284, 0xA58D, 0xAB86, 0x908D,
    0x6684, 0x3688, 0x1B81, 0x1081, 0x1080, 0x1380, 0x197B, 0x457F, 0x8066, 0xA77B, 0xA35C, 0xA37B, 0xA55E, 0xAA7E,
    0xAF62, 0xB481, 0xB767, 0xB685, 0xAF6E, 0xA788, 0xA175, 0x9D8B, 0x9F79, 0xA18C, 0xA37C, 0xA38C, 0xA37F, 0xA48C,
    0xA382, 0xA58D, 0xA884, 0x858C, 0x5083, 0x2186, 0x1580, 0x1081, 0x1080, 0x1080, 0x107E, 0x2B80, 0x616D, 0x917E,
    0xA05E, 0xAC7E, 0xAD5F, 0xB080, 0xB464, 0xB782, 0xB869, 0xB385, 0xAE71, 0xA688, 0xA175, 0x9D8B, 0x9E78, 0xA08C,
    0xA17B, 0xA38C, 0xA47E, 0xA68C, 0xA981, 0xA08C, 0x9382, 0x668A, 0x3481, 0x1283, 0x1080, 0x1080, 0x1080, 0x1080,
    0x107F, 0x1F80, 0x4073, 0x747F, 0x9D62, 0xB87F, 0xB561, 0xB580, 0xB765, 0xB783, 0xB76A, 0xB285, 0xAC71, 0xA589,
    0xA075, 0x9C8B, 0x9D79, 0x9F8C, 0xA07B, 0xA28C, 0xA47D, 0xA98C, 0xB080, 0x9B8C, 0x7881, 0x4688, 0x2381, 0x1082,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1380, 0x207A, 0x4A80, 0x7A6A, 0xA580, 0xAF65, 0xB981, 0xBB66, 0xBB84,
    0xB96C, 0xB286, 0xAB71, 0xA489, 0x9F75, 0x9C8B, 0x9D78, 0xA08C, 0xA27A, 0xA48C, 0xA57C, 0xA08B, 0x9B7F, 0x788A,
    0x4D80, 0x2585, 0x1480, 0x1081, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x157E, 0x2980, 0x4C74, 0x7E80,
    0xA168, 0xBD82, 0xC167, 0xC185, 0xBC6D, 0xB487, 0xAB72, 0xA389, 0x9F75, 0x9D8C, 0x9E77, 0xA28C, 0xA779, 0xA98D,
    0xA87C, 0x938B, 0x787F, 0x4C87, 0x2A80, 0x1683, 0x1180, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1180, 0x227C, 0x4880, 0x6D71, 0x9182, 0x9F6D, 0xAD84, 0xB070, 0xAF86, 0xAC73, 0xA789, 0xA475, 0x9F8B,
    0x9C78, 0x988B, 0x977A, 0x8E8B, 0x827C, 0x6388, 0x457F, 0x2384, 0x1080, 0x1081, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x157F, 0x2180, 0x307A, 0x4F81, 0x6B74, 0x8B83, 0x9B72, 0xAA85,
    0xB073, 0xB188, 0xAE75, 0xA58A, 0x9A79, 0x8A8A, 0x7E7B, 0x6388, 0x497E, 0x2D85, 0x2180, 0x1582, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1A80,
    0x347C, 0x5281, 0x6478, 0x7583, 0x7C78, 0x8185, 0x7F79, 0x7687, 0x6C7B, 0x5B86, 0x4E7D, 0x3484, 0x1B7F, 0x1082,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1280, 0x1A7F, 0x2380, 0x287E, 0x2D81, 0x307E, 0x3182, 0x307E, 0x2E82, 0x2B7E, 0x2682,
    0x227F, 0x1A81, 0x1380, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080,
};

static u16 gaPixelDisk2[1024] = {
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1480,
    0x1981, 0x207C, 0x2383, 0x2878, 0x2C84, 0x2F77, 0x2E85, 0x2B78, 0x2886, 0x2479, 0x2283, 0x1C7D, 0x1681, 0x107F,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1081, 0x207F, 0x3184, 0x4571, 0x5089, 0x6264, 0x708D, 0x7962, 0x7791, 0x6E63, 0x6294, 0x5567,
    0x4E8C, 0x3A74, 0x2483, 0x117D, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1580, 0x207D, 0x2E81, 0x4572, 0x5886, 0x6D60, 0x788E, 0x8B54, 0x9B93, 0xA455,
    0xA198, 0x9757, 0x899F, 0x7E5B, 0x7A97, 0x666C, 0x4E8D, 0x3379, 0x2384, 0x177F, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x237F, 0x3F76, 0x5681, 0x6E61, 0x7787, 0x8153,
    0x838E, 0x8C51, 0x9691, 0x9956, 0x9597, 0x8F59, 0x89A0, 0x875C, 0x8C9F, 0x8669, 0x7C98, 0x6275, 0x4A8A, 0x297C,
    0x1281, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x167F, 0x287D, 0x487C, 0x6A69,
    0x7C7F, 0x8A52, 0x8C86, 0x8D4B, 0x8B8D, 0x8D4E, 0x9191, 0x9255, 0x8E97, 0x8A5A, 0x89A1, 0x8F5C, 0x98A4, 0x9B68,
    0x99A0, 0x8773, 0x7295, 0x4C7A, 0x2B86, 0x187F, 0x1280, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1480,
    0x257D, 0x4976, 0x6E79, 0x885C, 0x897C, 0x8A4D, 0x8984, 0x894B, 0x888C, 0x8B4F, 0x8F91, 0x9054, 0x8C97, 0x8A59,
    0x88A2, 0x8D5C, 0x96A3, 0x986A, 0x95A1, 0x8D75, 0x869D, 0x6C79, 0x4D8D, 0x2A7E, 0x1581, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x107F, 0x227F, 0x487A, 0x766E, 0x9275, 0x9F54, 0x9478, 0x8C4A, 0x8980, 0x874B, 0x8789, 0x894E,
    0x8C90, 0x8D53, 0x8B98, 0x8A58, 0x89A2, 0x8D5E, 0x94A2, 0x956D, 0x91A2, 0x9077, 0x92A4, 0x857A, 0x7195, 0x487E,
    0x2384, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x107F, 0x307E, 0x6976, 0x9669, 0x9E71, 0x9F54, 0x9576, 0x8D4D,
    0x8A7D, 0x874B, 0x8687, 0x884D, 0x8B8F, 0x8D53, 0x8A98, 0x8A59, 0x8CA1, 0x9061, 0x93A2, 0x9370, 0x8FA2, 0x8C78,
    0x8DA4, 0x897C, 0x839B, 0x5F80, 0x3189, 0x1281, 0x1081, 0x1080, 0x1080, 0x1480, 0x1E7D, 0x507B, 0x8B71, 0xB263,
    0xAC6D, 0xA355, 0x9B71, 0x9350, 0x8E78, 0x8A4C, 0x8783, 0x884C, 0x8C8E, 0x8E51, 0x8D98, 0x8E59, 0x8FA0, 0x9165,
    0x92A1, 0x9073, 0x8CA2, 0x8A7B, 0x8CA3, 0x8E7F, 0x939F, 0x7883, 0x4E8E, 0x2482, 0x1681, 0x1080, 0x1080, 0x1C7F,
    0x397A, 0x6E76, 0x9D6E, 0xB961, 0xB26B, 0xA957, 0xA26D, 0x9952, 0x9373, 0x8D4D, 0x897F, 0x894C, 0x8D8B, 0x904F,
    0x9298, 0x9358, 0x92A0, 0x9269, 0x91A2, 0x8F76, 0x8CA2, 0x8B7D, 0x8EA2, 0x9282, 0x97A0, 0x8486, 0x6790, 0x3C84,
    0x1C82, 0x1081, 0x107F, 0x247F, 0x5677, 0x8E72, 0xAC6B, 0xBD5F, 0xB669, 0xAF5A, 0xAB69, 0xA256, 0x9D6C, 0x944F,
    0x8D77, 0x8C4E, 0x9086, 0x9755, 0x9C92, 0x9D60, 0x999C, 0x946F, 0x91A1, 0x8E7B, 0x8EA1, 0x8F82, 0x929F, 0x9788,
    0x9C9F, 0x938B, 0x8392, 0x5587, 0x2483, 0x1081, 0x107F, 0x297F, 0x6574, 0x9C70, 0xAE69, 0xBA5F, 0xB668, 0xB25C,
    0xB069, 0xAA5A, 0xA468, 0x9952, 0x9170, 0x9051, 0x967F, 0xA05F, 0xA88B, 0xA86B, 0x9F97, 0x9575, 0x91A0, 0x8E7F,
    0x90A1, 0x9387, 0x969E, 0x9B8B, 0x9F9C, 0x9B8D, 0x9192, 0x628A, 0x2884, 0x1083, 0x107F, 0x2E7E, 0x7770, 0xAD6C,
    0xB265, 0xB65E, 0xB465, 0xB45D, 0xB466, 0xB25D, 0xAD64, 0xA256, 0x986C, 0x8B59, 0x827B, 0x7F6D, 0x8684, 0x9177,
    0x998F, 0x9B7B, 0x949C, 0x9287, 0x949F, 0x988E, 0x9B9B, 0x9F91, 0xA399, 0xA292, 0xA294, 0x728F, 0x2C85, 0x1084,
    0x107E, 0x317E, 0x816D, 0xB669, 0xB261, 0xB15C, 0xB162, 0xB35C, 0xB564, 0xB45D, 0xB263, 0xA859, 0x9F6E, 0x8063,
    0x5E7D, 0x4777, 0x4881, 0x637D, 0x8989, 0xA17F, 0x9B98, 0x988D, 0x999C, 0x9C94, 0x9E9A, 0xA195, 0xA398, 0xA694,
    0xAC95, 0x7B92, 0x2F86, 0x1085, 0x107E, 0x327E, 0x8668, 0xB967, 0xAF5A, 0xAB5A, 0xAC5C, 0xAE5C, 0xB15E, 0xB35F,
    0xB35E, 0xAB5F, 0xA16F, 0x776B, 0x457F, 0x207E, 0x1C80, 0x4181, 0x7B83, 0xA182, 0x9F92, 0x9F92, 0x9F98, 0xA09A,
    0xA198, 0xA398, 0xA397, 0xA898, 0xB295, 0x8197, 0x3186, 0x1087, 0x107E, 0x327E, 0x8264, 0xB466, 0xAB55, 0xA75A,
    0xA756, 0xA95C, 0xAB58, 0xAD5F, 0xAF59, 0xA862, 0x9D6F, 0x746E, 0x4480, 0x1F7D, 0x1A81, 0x3C80, 0x7482, 0x9C81,
    0x9F8F, 0xA295, 0xA296, 0xA39C, 0xA396, 0xA39B, 0xA396, 0xA79B, 0xB295, 0x8199, 0x3186, 0x1087, 0x107E, 0x2F7E,
    0x7861, 0xA869, 0xA450, 0xA35D, 0xA350, 0xA460, 0xA650, 0xA964, 0xAC52, 0xA669, 0x9A68, 0x7A73, 0x577B, 0x3D7C,
    0x3A7E, 0x537F, 0x7B7E, 0x9A84, 0x9F89, 0xA497, 0xA390, 0xA39E, 0xA393, 0xA49D, 0xA394, 0xA49D, 0xAA93, 0x7A99,
    0x2F85, 0x1087, 0x107E, 0x2B7F, 0x6E61, 0x9D6C, 0xA04E, 0xA261, 0xA24D, 0xA364, 0xA54D, 0xA969, 0xAC4E, 0xA570,
    0x9960, 0x8577, 0x7573, 0x6A7A, 0x6C79, 0x7A7E, 0x8B7A, 0x9B8A, 0x9F84, 0xA399, 0xA28C, 0xA19D, 0xA290, 0xA39C,
    0xA492, 0xA29D, 0x9F90, 0x6F98, 0x2C84, 0x1086, 0x107E, 0x267F, 0x5B65, 0x8C71, 0x9B4D, 0xA667, 0xA349, 0xA46A,
    0xA64B, 0xAA70, 0xAD4B, 0xAA77, 0xA155, 0x997E, 0x9566, 0x9481, 0x9972, 0x9D85, 0x9F77, 0xA090, 0xA17F, 0xA199,
    0xA086, 0x9F9C, 0x9F8B, 0xA29D, 0xA68E, 0x9D9D, 0x8E8C, 0x5D95, 0x2683, 0x1085, 0x107E, 0x217F, 0x4D69, 0x7E76,
    0x9B4E, 0xAC6C, 0xA748, 0xA66F, 0xA84A, 0xAC75, 0xAE4C, 0xAF7C, 0xAD4E, 0xAA83, 0xA65B, 0xA48B, 0xA76C, 0xA990,
    0xA975, 0xA794, 0xA37D, 0xA099, 0x9E83, 0x9D9C, 0x9D88, 0xA19D, 0xA88B, 0x999D, 0x8089, 0x4F94, 0x2282, 0x1084,
    0x107F, 0x1A80, 0x3172, 0x627B, 0x9153, 0xB073, 0xAB49, 0xAB74, 0xAC4B, 0xAF7B, 0xB14C, 0xB381, 0xB54B, 0xB488,
    0xB056, 0xAF92, 0xB269, 0xB396, 0xB375, 0xAF95, 0xA97A, 0xA297, 0x9F7F, 0x9D9B, 0x9D84, 0x9F9D, 0xA588, 0x8D9C,
    0x6586, 0x3590, 0x1A82, 0x1083, 0x1080, 0x1380, 0x1A79, 0x487E, 0x8659, 0xB177, 0xAE4B, 0xAF78, 0xB04D, 0xB17D,
    0xB24D, 0xB382, 0xB24E, 0xB08A, 0xAD5B, 0xAE91, 0xB26B, 0xB593, 0xB675, 0xB393, 0xAD7A, 0xA696, 0xA17D, 0x9F9A,
    0x9E82, 0x9F9D, 0xA186, 0x7F9B, 0x4C84, 0x208D, 0x1581, 0x1082, 0x1080, 0x1080, 0x107E, 0x2D80, 0x6764, 0x9B7C,
    0xAC4F, 0xB87C, 0xB54D, 0xB480, 0xB54D, 0xB385, 0xB150, 0xAE8C, 0xAA5D, 0xAC92, 0xB16C, 0xB792, 0xBA75, 0xB891,
    0xB479, 0xAC93, 0xA77C, 0xA498, 0xA580, 0x9B9C, 0x8D83, 0x6196, 0x3182, 0x1188, 0x1080, 0x1080, 0x1080, 0x1080,
    0x107F, 0x2080, 0x456D, 0x7D7E, 0xA852, 0xC27E, 0xBA4B, 0xB682, 0xB74C, 0xB487, 0xB052, 0xAC8E, 0xA95E, 0xAA93,
    0xB06B, 0xB693, 0xBB75, 0xBB91, 0xB879, 0xB292, 0xAD7A, 0xAB97, 0xAE7E, 0x989A, 0x7581, 0x4492, 0x2181, 0x1085,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1480, 0x2377, 0x4F80, 0x815E, 0xAA80, 0xB24E, 0xB984, 0xBA4D, 0xB78A,
    0xB154, 0xAB90, 0xA75F, 0xA894, 0xAE6B, 0xB694, 0xBC75, 0xC091, 0xBF78, 0xBA91, 0xB47A, 0xA894, 0x9D7D, 0x7795,
    0x4D7F, 0x258B, 0x1480, 0x1082, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1180, 0x157D, 0x2A80, 0x4E6B, 0x7F81,
    0xA253, 0xBD85, 0xBE4E, 0xBC8B, 0xB455, 0xAB90, 0xA75F, 0xA795, 0xAC6A, 0xB595, 0xBD73, 0xC491, 0xC678, 0xC291,
    0xBB7A, 0x9D92, 0x7C7D, 0x4C8E, 0x2A80, 0x1685, 0x1180, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x2178, 0x4781, 0x6D63, 0x9184, 0x9D59, 0xA78A, 0xA75B, 0xA890, 0xA861, 0xAC94, 0xB06A, 0xB594,
    0xB873, 0xB790, 0xB479, 0xA48E, 0x937B, 0x6D8C, 0x4A7E, 0x2487, 0x1180, 0x1081, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x157E, 0x2180, 0x3075, 0x4E82, 0x6968, 0x8687, 0x9460, 0xA48E,
    0xAD61, 0xB794, 0xBA6A, 0xB994, 0xB374, 0xA38F, 0x937B, 0x728B, 0x547D, 0x3287, 0x227F, 0x1683, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x107F, 0x1A80,
    0x3377, 0x5083, 0x5F6D, 0x7188, 0x7C6C, 0x858D, 0x8671, 0x838D, 0x7B78, 0x6989, 0x597D, 0x3A86, 0x207F, 0x1082,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1280, 0x1A7D, 0x2281, 0x277B, 0x2C82, 0x307A, 0x3284, 0x337C, 0x3184, 0x2F7E, 0x2A83,
    0x257F, 0x1C81, 0x1480, 0x1081, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080, 0x1080,
    0x1080, 0x1080,
};

#endif

#endif
