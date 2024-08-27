#ifndef _ROM_TABLES_H
#define _ROM_TABLES_H

#include "dolphin/types.h"
#include "macros.h"

#if VERSION == MQ_J || VERSION == CE_J

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

#elif VERSION == MQ_U || VERSION == CE_U

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

#endif

#endif