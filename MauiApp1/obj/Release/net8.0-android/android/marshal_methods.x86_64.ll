; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [176 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [352 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 44
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 175
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 49
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 130
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 85
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 102
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 151
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 162
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 120
	i64 805302231655005164, ; 9: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 90
	i64 1010599046655515943, ; 11: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 151
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 106
	i64 1268860745194512059, ; 13: System.Drawing.dll => 0x119be62002c19ebb => 126
	i64 1369545283391376210, ; 14: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 98
	i64 1426308605732942162, ; 15: Telerik.Android.Data => 0x13cb441eb8cb7152 => 73
	i64 1476839205573959279, ; 16: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 137
	i64 1486715745332614827, ; 17: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 46
	i64 1513467482682125403, ; 18: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 174
	i64 1537168428375924959, ; 19: System.Threading.Thread.dll => 0x15551e8a954ae0df => 162
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 83
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 95
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 51
	i64 1735388228521408345, ; 23: System.Net.Mail.dll => 0x181556663c69b759 => 134
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 132
	i64 1757657332641132034, ; 25: Telerik.Documents.Flow => 0x1864740814ef6e02 => 63
	i64 1767386781656293639, ; 26: System.Private.Uri.dll => 0x188704e9f5582107 => 146
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 82
	i64 1835311033149317475, ; 28: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 102
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 125
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 47
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 94
	i64 2016094873913193346, ; 34: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll => 0x1bfa9b9b2914f382 => 69
	i64 2102659300918482391, ; 35: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 125
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 51
	i64 2248236514743090012, ; 37: Telerik.Android.Chart => 0x1f335732d052fb5c => 71
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 90
	i64 2287834202362508563, ; 39: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 111
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 93
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 86
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 156
	i64 2547086958574651984, ; 43: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 81
	i64 2584818638823695362, ; 44: Telerik.Android.Chart.dll => 0x23df1edb67e52402 => 71
	i64 2602673633151553063, ; 45: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 46: System.Net.NameResolution => 0x2487b36034f808cb => 135
	i64 2656907746661064104, ; 47: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 39
	i64 2662981627730767622, ; 48: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2751819668598402442, ; 49: Telerik.Android.Common.dll => 0x26306d68a8bdad8a => 72
	i64 2895129759130297543, ; 50: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 51: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 106
	i64 3222498811760126034, ; 52: Telerik.Documents.SpreadsheetStreaming.dll => 0x2cb89d988414a852 => 70
	i64 3254037935674351285, ; 53: SkiaSharp.Views.Maui.Controls.Compatibility.dll => 0x2d28aa430983deb5 => 55
	i64 3289520064315143713, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 92
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 144
	i64 3321269044039068031, ; 56: MauiApp1 => 0x2e1784994573297f => 109
	i64 3325875462027654285, ; 57: System.Runtime.Numerics => 0x2e27e21c8958b48d => 153
	i64 3328853167529574890, ; 58: System.Net.Sockets.dll => 0x2e327651a008c1ea => 141
	i64 3344514922410554693, ; 59: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 108
	i64 3414639567687375782, ; 60: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 54
	i64 3429672777697402584, ; 61: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 49
	i64 3494946837667399002, ; 62: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 37
	i64 3522470458906976663, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 103
	i64 3551103847008531295, ; 64: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3567343442040498961, ; 65: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 66: System.Runtime.dll => 0x319037675df7e556 => 156
	i64 3638003163729360188, ; 67: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 38
	i64 3647754201059316852, ; 68: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 167
	i64 3655542548057982301, ; 69: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 37
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 170
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 101
	i64 3869221888984012293, ; 72: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 41
	i64 3890352374528606784, ; 73: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 47
	i64 3904626980117740842, ; 74: Telerik.Android.Input => 0x3630058d0252fd2a => 74
	i64 3933965368022646939, ; 75: System.Net.Requests => 0x369840a8bfadc09b => 138
	i64 3966267475168208030, ; 76: System.Memory => 0x370b03412596249e => 132
	i64 4009997192427317104, ; 77: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 155
	i64 4070326265757318011, ; 78: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 79: System.Private.Xml.dll => 0x3887fb25779ae26e => 148
	i64 4073631083018132676, ; 80: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 45
	i64 4120493066591692148, ; 81: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 82: System.ComponentModel => 0x39a7562737acb67e => 120
	i64 4167269041631776580, ; 83: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 163
	i64 4187479170553454871, ; 84: System.Linq.Expressions => 0x3a1cea1e912fa117 => 130
	i64 4205801962323029395, ; 85: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 119
	i64 4276655546545176254, ; 86: Telerik.Documents.Spreadsheet.dll => 0x3b59bb8f96877ebe => 66
	i64 4360412976914417659, ; 87: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4388833520688958302, ; 88: Telerik.Android.List => 0x3ce844d582fe0b5e => 75
	i64 4408641050721538416, ; 89: Telerik.Documents.CMapUtils.dll => 0x3d2ea3ad7a765170 => 58
	i64 4477672992252076438, ; 90: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 165
	i64 4743821336939966868, ; 91: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 116
	i64 4794310189461587505, ; 92: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 81
	i64 4795410492532947900, ; 93: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 103
	i64 4809057822547766521, ; 94: System.Drawing => 0x42bd349c3145ecf9 => 126
	i64 4814660307502931973, ; 95: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 135
	i64 4871824391508510238, ; 96: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4937377294538952812, ; 97: Telerik.Zip.dll => 0x4485167d7312d06c => 80
	i64 4953714692329509532, ; 98: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 99: System.Collections.Specialized => 0x46d2fb5e161b6285 => 114
	i64 5182934613077526976, ; 100: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 114
	i64 5220528816406009119, ; 101: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml => 0x48730b4c8992151f => 67
	i64 5278787618751394462, ; 102: System.Net.WebClient.dll => 0x4942055efc68329e => 142
	i64 5471532531798518949, ; 103: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 104: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 105: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 128
	i64 5573260873512690141, ; 106: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 157
	i64 5692067934154308417, ; 107: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 105
	i64 5964285404991333262, ; 108: Telerik.Documents.Core.dll => 0x52c565f9c78e238e => 59
	i64 5979151488806146654, ; 109: System.Formats.Asn1 => 0x52fa3699a489d25e => 127
	i64 6200764641006662125, ; 110: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6284145129771520194, ; 111: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 149
	i64 6293646004048624906, ; 112: Telerik.Maui.Controls.Compatibility.dll => 0x575785b20d5ffd0a => 77
	i64 6300676701234028427, ; 113: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6339806692430442412, ; 114: Telerik.Documents.DrawingML => 0x57fb8498d6f5efac => 60
	i64 6357457916754632952, ; 115: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 93
	i64 6471714727257221498, ; 117: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 118: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 119: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 89
	i64 6560151584539558821, ; 120: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 43
	i64 6660874382371599727, ; 121: Telerik.Android.Input.dll => 0x5c702df5bec2356f => 74
	i64 6671798237668743565, ; 122: SkiaSharp => 0x5c96fd260152998d => 52
	i64 6743165466166707109, ; 123: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 124: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 124
	i64 6814185388980153342, ; 125: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 168
	i64 6876862101832370452, ; 126: System.Xml.Linq => 0x5f6f85a57d108914 => 166
	i64 6884668433786926920, ; 127: Telerik.Maui.Core => 0x5f8b4176c836f748 => 79
	i64 6894844156784520562, ; 128: System.Numerics.Vectors => 0x5faf683aead1ad72 => 144
	i64 7060896174307865760, ; 129: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 161
	i64 7083547580668757502, ; 130: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 147
	i64 7105430439328552570, ; 131: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 57
	i64 7136185682594785577, ; 132: Telerik.Documents.Flow.FormatProviders.Pdf => 0x6308d311b64a6929 => 65
	i64 7270811800166795866, ; 133: System.Linq => 0x64e71ccf51a90a5a => 131
	i64 7314237870106916923, ; 134: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 56
	i64 7377312882064240630, ; 135: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 119
	i64 7384551144889700488, ; 136: Telerik.Documents.Fixed.FormatProviders.Image.Skia => 0x667b322428dad088 => 62
	i64 7399759355131470155, ; 137: Telerik.Android.List.dll => 0x66b139ed89fc214b => 75
	i64 7488575175965059935, ; 138: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 166
	i64 7489048572193775167, ; 139: System.ObjectModel => 0x67ee71ff6b419e3f => 145
	i64 7654504624184590948, ; 140: System.Net.Http => 0x6a3a4366801b8264 => 133
	i64 7694700312542370399, ; 141: System.Net.Mail => 0x6ac9112a7e2cda5f => 134
	i64 7714652370974252055, ; 142: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7723873813026311384, ; 143: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 54
	i64 7735176074855944702, ; 144: Microsoft.CSharp => 0x6b58dda848e391fe => 110
	i64 7735352534559001595, ; 145: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 107
	i64 7742555799473854801, ; 146: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 147: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 83
	i64 7927939710195668715, ; 148: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 53
	i64 7975724199463739455, ; 149: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 150: System.Collections.dll => 0x6fe942efa61731bf => 115
	i64 8083354569033831015, ; 151: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 92
	i64 8087206902342787202, ; 152: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 123
	i64 8108129031893776750, ; 153: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 154: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 172
	i64 8185542183669246576, ; 155: System.Collections => 0x7198e33f4794aa70 => 115
	i64 8246048515196606205, ; 156: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 50
	i64 8365124861150488793, ; 157: Telerik.Documents.Core => 0x7416e4bdaaa9e8d9 => 59
	i64 8368701292315763008, ; 158: System.Security.Cryptography => 0x7423997c6fd56140 => 157
	i64 8386351099740279196, ; 159: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 160: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 100
	i64 8410671156615598628, ; 161: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 150
	i64 8518412311883997971, ; 162: System.Collections.Immutable => 0x76377add7c28e313 => 112
	i64 8563666267364444763, ; 163: System.Private.Uri => 0x76d841191140ca5b => 146
	i64 8599632406834268464, ; 164: CommunityToolkit.Maui => 0x7758081c784b4930 => 35
	i64 8626175481042262068, ; 165: Java.Interop => 0x77b654e585b55834 => 172
	i64 8638972117149407195, ; 166: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 110
	i64 8639588376636138208, ; 167: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 99
	i64 8677882282824630478, ; 168: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 169: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 123
	i64 8770615334550455251, ; 170: Telerik.Documents.Flow.FormatProviders.Doc.dll => 0x79b77c2d957943d3 => 64
	i64 8941376889969657626, ; 171: System.Xml.XDocument => 0x7c1626e87187471a => 168
	i64 9045785047181495996, ; 172: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 173: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 105
	i64 9324707631942237306, ; 174: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 82
	i64 9344347229943845669, ; 175: Telerik.Documents.Spreadsheet.FormatProviders.Xls => 0x81adca4c12b55325 => 69
	i64 9362451939117115337, ; 176: Telerik.Maui.Controls.dll => 0x81ee1c6f29be27c9 => 78
	i64 9363564275759486853, ; 177: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9380750071725139124, ; 178: Telerik.Documents.Spreadsheet.FormatProviders.Pdf => 0x822f1e7d27e5a4b4 => 68
	i64 9551379474083066910, ; 179: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 180: System.Text.RegularExpressions => 0x860e407c9991dd9b => 159
	i64 9678050649315576968, ; 181: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 86
	i64 9702891218465930390, ; 182: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 113
	i64 9773637193738963987, ; 183: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 184: Mono.Android.dll => 0x881f890734e555e7 => 175
	i64 9956195530459977388, ; 185: Microsoft.Maui => 0x8a2b8315b36616ac => 48
	i64 10038780035334861115, ; 186: System.Net.Http.dll => 0x8b50e941206af13b => 133
	i64 10051358222726253779, ; 187: System.Private.Xml => 0x8b7d990c97ccccd3 => 148
	i64 10092835686693276772, ; 188: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 46
	i64 10105485790837105934, ; 189: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 161
	i64 10143853363526200146, ; 190: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 191: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 192: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 89
	i64 10236703004850800690, ; 193: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 140
	i64 10245369515835430794, ; 194: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 150
	i64 10364469296367737616, ; 195: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 149
	i64 10406448008575299332, ; 196: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 108
	i64 10430153318873392755, ; 197: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 87
	i64 10506226065143327199, ; 198: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10726309646227589800, ; 199: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll => 0x94db81caf63dcaa8 => 68
	i64 10761706286639228993, ; 200: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 201: System.Net.Primitives => 0x95ac8cfb68830758 => 137
	i64 10836702154884303777, ; 202: Telerik.Android.Common => 0x9663b331ce96cba1 => 72
	i64 10880838204485145808, ; 203: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 35
	i64 11002576679268595294, ; 204: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 42
	i64 11009005086950030778, ; 205: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 48
	i64 11103970607964515343, ; 206: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 207: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 208: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 209: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 104
	i64 11220793807500858938, ; 210: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 211: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 43
	i64 11287285751767514268, ; 212: Telerik.Documents.DrawingML.dll => 0x9ca47e96b06e3c9c => 60
	i64 11340910727871153756, ; 213: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 88
	i64 11446671985764974897, ; 214: Mono.Android.Export => 0x9edabf8623efc131 => 173
	i64 11485890710487134646, ; 215: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 152
	i64 11501770418187005580, ; 216: Telerik.Documents.Flow.dll => 0x9f9e7f41a021ee8c => 63
	i64 11518296021396496455, ; 217: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11520491446140113101, ; 218: Telerik.Documents.CMapUtils => 0x9fe101ee9d1b90cd => 58
	i64 11529969570048099689, ; 219: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 104
	i64 11530571088791430846, ; 220: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 41
	i64 11597940890313164233, ; 221: netstandard => 0xa0f429ca8d1805c9 => 170
	i64 11855031688536399763, ; 222: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12004812399771082834, ; 223: Telerik.Maui.Controls.Compatibility => 0xa699a945fb8f6052 => 77
	i64 12040886584167504988, ; 224: System.Net.ServicePoint => 0xa719d28d8e121c5c => 140
	i64 12201331334810686224, ; 225: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 155
	i64 12269460666702402136, ; 226: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 112
	i64 12341818387765915815, ; 227: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 36
	i64 12451044538927396471, ; 228: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 91
	i64 12466513435562512481, ; 229: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 96
	i64 12475113361194491050, ; 230: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 231: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 124
	i64 12538491095302438457, ; 232: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 84
	i64 12550732019250633519, ; 233: System.IO.Compression => 0xae2d28465e8e1b2f => 129
	i64 12699904666978134734, ; 234: Telerik.Documents.Spreadsheet => 0xb03f2001f48eaace => 66
	i64 12700543734426720211, ; 235: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 85
	i64 12708922737231849740, ; 236: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 158
	i64 12843321153144804894, ; 237: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 44
	i64 12859557719246324186, ; 238: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 143
	i64 12989346753972519995, ; 239: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 240: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13056519019444193772, ; 241: MauiApp1.dll => 0xb53212df2d1a49ec => 109
	i64 13068258254871114833, ; 242: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 154
	i64 13343850469010654401, ; 243: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 174
	i64 13381594904270902445, ; 244: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13431476299110033919, ; 245: System.Net.WebClient => 0xba663087f18829ff => 142
	i64 13465488254036897740, ; 246: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 107
	i64 13540124433173649601, ; 247: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13572454107664307259, ; 248: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 101
	i64 13681443392888828423, ; 249: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll => 0xbdde404747c0f207 => 67
	i64 13717397318615465333, ; 250: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 118
	i64 13881769479078963060, ; 251: System.Console.dll => 0xc0a5f3cade5c6774 => 121
	i64 13926059544445948811, ; 252: Telerik.Android.Data.dll => 0xc1434d5f4ba3938b => 73
	i64 13959074834287824816, ; 253: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 91
	i64 14124974489674258913, ; 254: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 84
	i64 14125464355221830302, ; 255: System.Threading.dll => 0xc407bafdbc707a9e => 164
	i64 14254574811015963973, ; 256: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 158
	i64 14349907877893689639, ; 257: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14365648620315232603, ; 258: Telerik.Documents.Fixed => 0xc75d094ec5f8495b => 61
	i64 14461014870687870182, ; 259: System.Net.Requests.dll => 0xc8afd8683afdece6 => 138
	i64 14464374589798375073, ; 260: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 261: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14552901170081803662, ; 262: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 56
	i64 14556034074661724008, ; 263: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 36
	i64 14610046442689856844, ; 264: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 265: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 154
	i64 14669215534098758659, ; 266: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 39
	i64 14690985099581930927, ; 267: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 165
	i64 14705122255218365489, ; 268: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 269: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 270: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14846885518376783421, ; 271: Telerik.Documents.SpreadsheetStreaming => 0xce0abbb77fbd4e3d => 70
	i64 14852515768018889994, ; 272: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 88
	i64 14904040806490515477, ; 273: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 274: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 40
	i64 14984936317414011727, ; 275: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 143
	i64 14987728460634540364, ; 276: System.IO.Compression.dll => 0xcfff1ba06622494c => 129
	i64 15015154896917945444, ; 277: System.Net.Security.dll => 0xd0608bd33642dc64 => 139
	i64 15076659072870671916, ; 278: System.ObjectModel.dll => 0xd13b0d8c1620662c => 145
	i64 15111608613780139878, ; 279: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 280: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 128
	i64 15133485256822086103, ; 281: System.Linq.dll => 0xd204f0a9127dd9d7 => 131
	i64 15203009853192377507, ; 282: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 283: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 38
	i64 15279945280394896426, ; 284: Telerik.Zip => 0xd40d4546a158242a => 80
	i64 15370334346939861994, ; 285: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 87
	i64 15391712275433856905, ; 286: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 40
	i64 15527772828719725935, ; 287: System.Console => 0xd77dbb1e38cd3d6f => 121
	i64 15536481058354060254, ; 288: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 289: System.Net.Sockets => 0xd7e790fe7a6dc536 => 141
	i64 15582737692548360875, ; 290: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 95
	i64 15609085926864131306, ; 291: System.dll => 0xd89e9cf3334914ea => 169
	i64 15661133872274321916, ; 292: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 167
	i64 15783653065526199428, ; 293: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 294: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 160
	i64 15928521404965645318, ; 295: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 45
	i64 16018552496348375205, ; 296: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 136
	i64 16056281320585338352, ; 297: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 298: System => 0xe03056ea4e39aa26 => 169
	i64 16219561732052121626, ; 299: System.Net.Security => 0xe1177575db7c781a => 139
	i64 16228073745853882457, ; 300: Telerik.Documents.Fixed.dll => 0xe135b3178276a059 => 61
	i64 16236984353984608938, ; 301: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll => 0xe1555b3e22d3faaa => 62
	i64 16288847719894691167, ; 302: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 303: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 42
	i64 16324796876805858114, ; 304: SkiaSharp.dll => 0xe28d5444586b6342 => 52
	i64 16454459195343277943, ; 305: System.Net.NetworkInformation => 0xe459fb756d988f77 => 136
	i64 16496768397145114574, ; 306: Mono.Android.Export.dll => 0xe4f04b741db987ce => 173
	i64 16523066248396519716, ; 307: Telerik.Maui.Core.dll => 0xe54db935bfebb924 => 79
	i64 16601460575841364625, ; 308: Telerik.Documents.Flow.FormatProviders.Pdf.dll => 0xe6643c6f77ad2a91 => 65
	i64 16649148416072044166, ; 309: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 50
	i64 16677317093839702854, ; 310: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 100
	i64 16692042661323983851, ; 311: Telerik.Android.Primitives.dll => 0xe7a60c5cbbe1cbeb => 76
	i64 16803648858859583026, ; 312: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 313: System.Data.Common.dll => 0xe9ecc87060889373 => 122
	i64 16890310621557459193, ; 314: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 159
	i64 16942731696432749159, ; 315: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 316: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 98
	i64 17008137082415910100, ; 317: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 113
	i64 17031351772568316411, ; 318: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 97
	i64 17062143951396181894, ; 319: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 118
	i64 17118171214553292978, ; 320: System.Threading.Channels => 0xed8ff6060fc420b2 => 160
	i64 17187273293601214786, ; 321: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 116
	i64 17201328579425343169, ; 322: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 117
	i64 17203614576212522419, ; 323: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17230721278011714856, ; 324: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 147
	i64 17260702271250283638, ; 325: System.Data.Common => 0xef8a5543bba6bc76 => 122
	i64 17310278548634113468, ; 326: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 327: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17461841247173295664, ; 328: Telerik.Android.Primitives => 0xf254ec18f6073e30 => 76
	i64 17514990004910432069, ; 329: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 330: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17670106313739811877, ; 331: Telerik.Maui.Controls => 0xf538d41275d93c25 => 78
	i64 17671790519499593115, ; 332: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 53
	i64 17704177640604968747, ; 333: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 96
	i64 17710060891934109755, ; 334: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 94
	i64 17712670374920797664, ; 335: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 152
	i64 17777860260071588075, ; 336: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 153
	i64 17827813215687577648, ; 337: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 338: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 339: System.Threading => 0xfa28e87b91334681 => 164
	i64 18121036031235206392, ; 340: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 97
	i64 18132221390331549284, ; 341: SkiaSharp.Views.Maui.Controls.Compatibility => 0xfba297492f739664 => 55
	i64 18146411883821974900, ; 342: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 127
	i64 18146811631844267958, ; 343: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 117
	i64 18203743254473369877, ; 344: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 57
	i64 18225059387460068507, ; 345: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 163
	i64 18245806341561545090, ; 346: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 111
	i64 18305135509493619199, ; 347: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 99
	i64 18324163916253801303, ; 348: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 349: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786, ; 350: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
	i64 18437521474829576124 ; 351: Telerik.Documents.Flow.FormatProviders.Doc => 0xffdf3c185dda67bc => 64
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [352 x i32] [
	i32 44, ; 0
	i32 175, ; 1
	i32 49, ; 2
	i32 130, ; 3
	i32 85, ; 4
	i32 102, ; 5
	i32 151, ; 6
	i32 162, ; 7
	i32 120, ; 8
	i32 12, ; 9
	i32 90, ; 10
	i32 151, ; 11
	i32 106, ; 12
	i32 126, ; 13
	i32 98, ; 14
	i32 73, ; 15
	i32 137, ; 16
	i32 46, ; 17
	i32 174, ; 18
	i32 162, ; 19
	i32 83, ; 20
	i32 95, ; 21
	i32 51, ; 22
	i32 134, ; 23
	i32 132, ; 24
	i32 63, ; 25
	i32 146, ; 26
	i32 82, ; 27
	i32 6, ; 28
	i32 102, ; 29
	i32 125, ; 30
	i32 28, ; 31
	i32 47, ; 32
	i32 94, ; 33
	i32 69, ; 34
	i32 125, ; 35
	i32 51, ; 36
	i32 71, ; 37
	i32 90, ; 38
	i32 111, ; 39
	i32 93, ; 40
	i32 86, ; 41
	i32 156, ; 42
	i32 81, ; 43
	i32 71, ; 44
	i32 27, ; 45
	i32 135, ; 46
	i32 39, ; 47
	i32 2, ; 48
	i32 72, ; 49
	i32 7, ; 50
	i32 106, ; 51
	i32 70, ; 52
	i32 55, ; 53
	i32 92, ; 54
	i32 144, ; 55
	i32 109, ; 56
	i32 153, ; 57
	i32 141, ; 58
	i32 108, ; 59
	i32 54, ; 60
	i32 49, ; 61
	i32 37, ; 62
	i32 103, ; 63
	i32 171, ; 64
	i32 22, ; 65
	i32 156, ; 66
	i32 38, ; 67
	i32 167, ; 68
	i32 37, ; 69
	i32 170, ; 70
	i32 101, ; 71
	i32 41, ; 72
	i32 47, ; 73
	i32 74, ; 74
	i32 138, ; 75
	i32 132, ; 76
	i32 155, ; 77
	i32 3, ; 78
	i32 148, ; 79
	i32 45, ; 80
	i32 33, ; 81
	i32 120, ; 82
	i32 163, ; 83
	i32 130, ; 84
	i32 119, ; 85
	i32 66, ; 86
	i32 28, ; 87
	i32 75, ; 88
	i32 58, ; 89
	i32 165, ; 90
	i32 116, ; 91
	i32 81, ; 92
	i32 103, ; 93
	i32 126, ; 94
	i32 135, ; 95
	i32 18, ; 96
	i32 80, ; 97
	i32 26, ; 98
	i32 114, ; 99
	i32 114, ; 100
	i32 67, ; 101
	i32 142, ; 102
	i32 26, ; 103
	i32 29, ; 104
	i32 128, ; 105
	i32 157, ; 106
	i32 105, ; 107
	i32 59, ; 108
	i32 127, ; 109
	i32 23, ; 110
	i32 149, ; 111
	i32 77, ; 112
	i32 6, ; 113
	i32 60, ; 114
	i32 34, ; 115
	i32 93, ; 116
	i32 7, ; 117
	i32 11, ; 118
	i32 89, ; 119
	i32 43, ; 120
	i32 74, ; 121
	i32 52, ; 122
	i32 19, ; 123
	i32 124, ; 124
	i32 168, ; 125
	i32 166, ; 126
	i32 79, ; 127
	i32 144, ; 128
	i32 161, ; 129
	i32 147, ; 130
	i32 57, ; 131
	i32 65, ; 132
	i32 131, ; 133
	i32 56, ; 134
	i32 119, ; 135
	i32 62, ; 136
	i32 75, ; 137
	i32 166, ; 138
	i32 145, ; 139
	i32 133, ; 140
	i32 134, ; 141
	i32 171, ; 142
	i32 54, ; 143
	i32 110, ; 144
	i32 107, ; 145
	i32 14, ; 146
	i32 83, ; 147
	i32 53, ; 148
	i32 25, ; 149
	i32 115, ; 150
	i32 92, ; 151
	i32 123, ; 152
	i32 16, ; 153
	i32 172, ; 154
	i32 115, ; 155
	i32 50, ; 156
	i32 59, ; 157
	i32 157, ; 158
	i32 31, ; 159
	i32 100, ; 160
	i32 150, ; 161
	i32 112, ; 162
	i32 146, ; 163
	i32 35, ; 164
	i32 172, ; 165
	i32 110, ; 166
	i32 99, ; 167
	i32 21, ; 168
	i32 123, ; 169
	i32 64, ; 170
	i32 168, ; 171
	i32 31, ; 172
	i32 105, ; 173
	i32 82, ; 174
	i32 69, ; 175
	i32 78, ; 176
	i32 5, ; 177
	i32 68, ; 178
	i32 29, ; 179
	i32 159, ; 180
	i32 86, ; 181
	i32 113, ; 182
	i32 1, ; 183
	i32 175, ; 184
	i32 48, ; 185
	i32 133, ; 186
	i32 148, ; 187
	i32 46, ; 188
	i32 161, ; 189
	i32 3, ; 190
	i32 19, ; 191
	i32 89, ; 192
	i32 140, ; 193
	i32 150, ; 194
	i32 149, ; 195
	i32 108, ; 196
	i32 87, ; 197
	i32 1, ; 198
	i32 68, ; 199
	i32 33, ; 200
	i32 137, ; 201
	i32 72, ; 202
	i32 35, ; 203
	i32 42, ; 204
	i32 48, ; 205
	i32 12, ; 206
	i32 27, ; 207
	i32 8, ; 208
	i32 104, ; 209
	i32 15, ; 210
	i32 43, ; 211
	i32 60, ; 212
	i32 88, ; 213
	i32 173, ; 214
	i32 152, ; 215
	i32 63, ; 216
	i32 13, ; 217
	i32 58, ; 218
	i32 104, ; 219
	i32 41, ; 220
	i32 170, ; 221
	i32 30, ; 222
	i32 77, ; 223
	i32 140, ; 224
	i32 155, ; 225
	i32 112, ; 226
	i32 36, ; 227
	i32 91, ; 228
	i32 96, ; 229
	i32 34, ; 230
	i32 124, ; 231
	i32 84, ; 232
	i32 129, ; 233
	i32 66, ; 234
	i32 85, ; 235
	i32 158, ; 236
	i32 44, ; 237
	i32 143, ; 238
	i32 0, ; 239
	i32 21, ; 240
	i32 109, ; 241
	i32 154, ; 242
	i32 174, ; 243
	i32 9, ; 244
	i32 142, ; 245
	i32 107, ; 246
	i32 30, ; 247
	i32 101, ; 248
	i32 67, ; 249
	i32 118, ; 250
	i32 121, ; 251
	i32 73, ; 252
	i32 91, ; 253
	i32 84, ; 254
	i32 164, ; 255
	i32 158, ; 256
	i32 23, ; 257
	i32 61, ; 258
	i32 138, ; 259
	i32 24, ; 260
	i32 32, ; 261
	i32 56, ; 262
	i32 36, ; 263
	i32 2, ; 264
	i32 154, ; 265
	i32 39, ; 266
	i32 165, ; 267
	i32 16, ; 268
	i32 15, ; 269
	i32 32, ; 270
	i32 70, ; 271
	i32 88, ; 272
	i32 0, ; 273
	i32 40, ; 274
	i32 143, ; 275
	i32 129, ; 276
	i32 139, ; 277
	i32 145, ; 278
	i32 17, ; 279
	i32 128, ; 280
	i32 131, ; 281
	i32 22, ; 282
	i32 38, ; 283
	i32 80, ; 284
	i32 87, ; 285
	i32 40, ; 286
	i32 121, ; 287
	i32 4, ; 288
	i32 141, ; 289
	i32 95, ; 290
	i32 169, ; 291
	i32 167, ; 292
	i32 5, ; 293
	i32 160, ; 294
	i32 45, ; 295
	i32 136, ; 296
	i32 24, ; 297
	i32 169, ; 298
	i32 139, ; 299
	i32 61, ; 300
	i32 62, ; 301
	i32 18, ; 302
	i32 42, ; 303
	i32 52, ; 304
	i32 136, ; 305
	i32 173, ; 306
	i32 79, ; 307
	i32 65, ; 308
	i32 50, ; 309
	i32 100, ; 310
	i32 76, ; 311
	i32 17, ; 312
	i32 122, ; 313
	i32 159, ; 314
	i32 25, ; 315
	i32 98, ; 316
	i32 113, ; 317
	i32 97, ; 318
	i32 118, ; 319
	i32 160, ; 320
	i32 116, ; 321
	i32 117, ; 322
	i32 20, ; 323
	i32 147, ; 324
	i32 122, ; 325
	i32 10, ; 326
	i32 10, ; 327
	i32 76, ; 328
	i32 8, ; 329
	i32 20, ; 330
	i32 78, ; 331
	i32 53, ; 332
	i32 96, ; 333
	i32 94, ; 334
	i32 152, ; 335
	i32 153, ; 336
	i32 11, ; 337
	i32 4, ; 338
	i32 164, ; 339
	i32 97, ; 340
	i32 55, ; 341
	i32 127, ; 342
	i32 117, ; 343
	i32 57, ; 344
	i32 163, ; 345
	i32 111, ; 346
	i32 99, ; 347
	i32 14, ; 348
	i32 13, ; 349
	i32 9, ; 350
	i32 64 ; 351
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
