; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [176 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [352 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 136
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 135
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 51
	i32 42244203, ; 4: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 162
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 7: Microsoft.Maui.Graphics.dll => 0x44bb714 => 50
	i32 83839681, ; 8: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 152
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 160
	i32 136584136, ; 11: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 12: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 142721839, ; 13: System.Net.WebHeaderCollection => 0x881c32f => 143
	i32 159306688, ; 14: System.ComponentModel.Annotations => 0x97ed3c0 => 116
	i32 165246403, ; 15: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 85
	i32 172570105, ; 16: Telerik.Maui.Controls.Compatibility.dll => 0xa4935f9 => 77
	i32 182336117, ; 17: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 103
	i32 205061960, ; 18: System.ComponentModel => 0xc38ff48 => 120
	i32 230752869, ; 19: Microsoft.CSharp.dll => 0xdc10265 => 110
	i32 233797645, ; 20: Telerik.Maui.Core => 0xdef780d => 79
	i32 246610117, ; 21: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 150
	i32 246901797, ; 22: Telerik.Documents.Flow.FormatProviders.Doc => 0xeb76c25 => 64
	i32 250136632, ; 23: Telerik.Documents.Fixed.FormatProviders.Image.Skia => 0xee8c838 => 62
	i32 278310601, ; 24: Telerik.Android.Input => 0x1096aec9 => 74
	i32 317674968, ; 25: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 26: Xamarin.AndroidX.Activity.dll => 0x13031348 => 81
	i32 321963286, ; 27: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 92
	i32 375677976, ; 29: System.Net.ServicePoint.dll => 0x16646418 => 140
	i32 379916513, ; 30: System.Threading.Thread.dll => 0x16a510e1 => 162
	i32 385762202, ; 31: System.Memory.dll => 0x16fe439a => 132
	i32 392610295, ; 32: System.Threading.ThreadPool.dll => 0x1766c1f7 => 163
	i32 395744057, ; 33: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 34: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 35: System.Collections => 0x1a61054f => 115
	i32 450948140, ; 36: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 91
	i32 456227837, ; 37: System.Web.HttpUtility.dll => 0x1b317bfd => 165
	i32 459347974, ; 38: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 155
	i32 469710990, ; 39: System.dll => 0x1bff388e => 169
	i32 489220957, ; 40: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 41: System.ObjectModel => 0x1dbae811 => 145
	i32 500153091, ; 42: Telerik.Android.Chart => 0x1dcfbb03 => 71
	i32 513247710, ; 43: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 44
	i32 525008092, ; 44: SkiaSharp.dll => 0x1f4afcdc => 52
	i32 538707440, ; 45: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 46: Microsoft.Extensions.Logging => 0x20216150 => 41
	i32 540199569, ; 47: Telerik.Maui.Controls.Compatibility => 0x2032ca91 => 77
	i32 543594171, ; 48: Telerik.Android.List.dll => 0x206696bb => 75
	i32 578095993, ; 49: Telerik.Android.Common => 0x22750b79 => 72
	i32 580362983, ; 50: Telerik.Documents.Spreadsheet.FormatProviders.Pdf => 0x2297a2e7 => 68
	i32 588324302, ; 51: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml => 0x23111dce => 67
	i32 597488923, ; 52: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 53: Xamarin.AndroidX.CustomView => 0x2568904f => 89
	i32 627931235, ; 54: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 55: System.Collections.Concurrent => 0x2814a96c => 111
	i32 683518922, ; 56: System.Net.Security => 0x28bdabca => 139
	i32 690569205, ; 57: System.Xml.Linq.dll => 0x29293ff5 => 166
	i32 709152836, ; 58: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 57
	i32 713568204, ; 59: MauiApp1.dll => 0x2a882fcc => 109
	i32 759454413, ; 60: System.Net.Requests => 0x2d445acd => 138
	i32 775507847, ; 61: System.IO.Compression => 0x2e394f87 => 129
	i32 777317022, ; 62: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 63: Microsoft.Extensions.Options => 0x2f0980eb => 43
	i32 804715423, ; 64: System.Data.Common => 0x2ff6fb9f => 122
	i32 823281589, ; 65: System.Private.Uri.dll => 0x311247b5 => 146
	i32 830298997, ; 66: System.IO.Compression.Brotli => 0x317d5b75 => 128
	i32 869139383, ; 67: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 879513154, ; 68: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll => 0x346c4e42 => 68
	i32 880668424, ; 69: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 70: System.ComponentModel.Primitives.dll => 0x35e25008 => 118
	i32 918734561, ; 71: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 72: Newtonsoft.Json => 0x38f24a24 => 51
	i32 961460050, ; 73: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 74: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 92
	i32 975874589, ; 75: System.Xml.XDocument => 0x3a2aaa1d => 168
	i32 984345159, ; 76: Telerik.Zip => 0x3aabea47 => 80
	i32 990727110, ; 77: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 78: System.Collections.dll => 0x3b2c715c => 115
	i32 994572943, ; 79: Telerik.Android.Common.dll => 0x3b47fa8f => 72
	i32 1012816738, ; 80: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 102
	i32 1019214401, ; 81: System.Drawing => 0x3cbffa41 => 126
	i32 1028951442, ; 82: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 40
	i32 1035644815, ; 83: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 82
	i32 1036536393, ; 84: System.Drawing.Primitives.dll => 0x3dc84a49 => 125
	i32 1043950537, ; 85: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 86: System.Linq.Expressions.dll => 0x3e444eb4 => 130
	i32 1052210849, ; 87: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 94
	i32 1082857460, ; 88: System.ComponentModel.TypeConverter => 0x408b17f4 => 119
	i32 1084122840, ; 89: Xamarin.Kotlin.StdLib => 0x409e66d8 => 107
	i32 1098259244, ; 90: System => 0x41761b2c => 169
	i32 1108272742, ; 91: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 92: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 93: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1151062364, ; 94: Telerik.Documents.DrawingML.dll => 0x449bd15c => 60
	i32 1168523401, ; 95: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 96: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 99
	i32 1260983243, ; 97: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 90
	i32 1308624726, ; 99: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 100: System.Linq => 0x4eed2679 => 131
	i32 1336711579, ; 101: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 102: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 103: Xamarin.AndroidX.SavedState => 0x52114ed3 => 102
	i32 1406073936, ; 104: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 86
	i32 1408764838, ; 105: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 154
	i32 1430672901, ; 106: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 107: System.Formats.Asn1.dll => 0x568cd628 => 127
	i32 1458022317, ; 108: System.Net.Security.dll => 0x56e7a7ad => 139
	i32 1461004990, ; 109: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 110: System.Collections.Immutable.dll => 0x5718a9ef => 112
	i32 1462112819, ; 111: System.IO.Compression.dll => 0x57261233 => 129
	i32 1469204771, ; 112: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 83
	i32 1470490898, ; 113: Microsoft.Extensions.Primitives => 0x57a5e912 => 44
	i32 1470766374, ; 114: Telerik.Android.List => 0x57aa1d26 => 75
	i32 1479771757, ; 115: System.Collections.Immutable => 0x5833866d => 112
	i32 1480492111, ; 116: System.IO.Compression.Brotli.dll => 0x583e844f => 128
	i32 1526286932, ; 117: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 118: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 159
	i32 1604827217, ; 119: System.Net.WebClient => 0x5fa7b851 => 142
	i32 1622152042, ; 120: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 96
	i32 1623212457, ; 121: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 54
	i32 1624863272, ; 122: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 105
	i32 1634654947, ; 123: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 124: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 88
	i32 1639515021, ; 125: System.Net.Http.dll => 0x61b9038d => 133
	i32 1639986890, ; 126: System.Text.RegularExpressions => 0x61c036ca => 159
	i32 1641389582, ; 127: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 117
	i32 1657153582, ; 128: System.Runtime => 0x62c6282e => 156
	i32 1658251792, ; 129: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 106
	i32 1677501392, ; 130: System.Net.Primitives.dll => 0x63fca3d0 => 137
	i32 1679769178, ; 131: System.Security.Cryptography => 0x641f3e5a => 157
	i32 1705973217, ; 132: Telerik.Documents.SpreadsheetStreaming.dll => 0x65af15e1 => 70
	i32 1729485958, ; 133: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 84
	i32 1743415430, ; 134: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1746316138, ; 135: Mono.Android.Export => 0x6816ab6a => 173
	i32 1763938596, ; 136: System.Diagnostics.TraceSource.dll => 0x69239124 => 124
	i32 1766324549, ; 137: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 103
	i32 1770582343, ; 138: Microsoft.Extensions.Logging.dll => 0x6988f147 => 41
	i32 1780572499, ; 139: Mono.Android.Runtime.dll => 0x6a216153 => 174
	i32 1782862114, ; 140: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 141: Xamarin.AndroidX.Fragment => 0x6a96652d => 91
	i32 1793755602, ; 142: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 143: Xamarin.AndroidX.Loader => 0x6bcd3296 => 96
	i32 1813058853, ; 144: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 107
	i32 1813201214, ; 145: Xamarin.Google.Android.Material => 0x6c13413e => 106
	i32 1818569960, ; 146: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 100
	i32 1824175904, ; 147: System.Text.Encoding.Extensions => 0x6cbab720 => 158
	i32 1824722060, ; 148: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 154
	i32 1828688058, ; 149: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1853025655, ; 150: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 151: System.Linq.Expressions => 0x6ec71a65 => 130
	i32 1870277092, ; 152: System.Reflection.Primitives => 0x6f7a29e4 => 151
	i32 1874600372, ; 153: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll => 0x6fbc21b4 => 62
	i32 1875935024, ; 154: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 155: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 156: System.Collections.NonGeneric.dll => 0x71dc7c8b => 113
	i32 1939592360, ; 157: System.Private.Xml.Linq => 0x739bd4a8 => 147
	i32 1953182387, ; 158: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 159: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 37
	i32 2003115576, ; 160: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 161: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 94
	i32 2042042370, ; 162: Telerik.Documents.Spreadsheet.FormatProviders.Xls => 0x79b71802 => 69
	i32 2042201515, ; 163: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll => 0x79b985ab => 69
	i32 2045470958, ; 164: System.Private.Xml => 0x79eb68ee => 148
	i32 2055257422, ; 165: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 93
	i32 2058309705, ; 166: Telerik.Documents.DrawingML => 0x7aaf5049 => 60
	i32 2066184531, ; 167: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 168: System.Diagnostics.TraceSource => 0x7b6f419e => 124
	i32 2079903147, ; 169: System.Runtime.dll => 0x7bf8cdab => 156
	i32 2090596640, ; 170: System.Numerics.Vectors => 0x7c9bf920 => 144
	i32 2127167465, ; 171: System.Console => 0x7ec9ffe9 => 121
	i32 2142473426, ; 172: System.Collections.Specialized => 0x7fb38cd2 => 114
	i32 2159891885, ; 173: Microsoft.Maui => 0x80bd55ad => 48
	i32 2169148018, ; 174: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 175: Microsoft.Extensions.Options.dll => 0x820d22b3 => 43
	i32 2192057212, ; 176: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 177: System.ObjectModel.dll => 0x82b6c85e => 145
	i32 2201107256, ; 178: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 108
	i32 2201231467, ; 179: System.Net.Http => 0x8334206b => 133
	i32 2207618523, ; 180: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2220894804, ; 181: Telerik.Documents.Spreadsheet.dll => 0x84602a54 => 66
	i32 2222056684, ; 182: System.Threading.Tasks.Parallel => 0x8471e4ec => 161
	i32 2266799131, ; 183: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 38
	i32 2279755925, ; 184: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 101
	i32 2295906218, ; 185: System.Net.Sockets => 0x88d8bfaa => 141
	i32 2298471582, ; 186: System.Net.Mail => 0x88ffe49e => 134
	i32 2303942373, ; 187: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 188: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2320631194, ; 189: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 161
	i32 2353062107, ; 190: System.Net.Primitives => 0x8c40e0db => 137
	i32 2364201794, ; 191: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 56
	i32 2366048013, ; 192: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 193: System.Xml.ReaderWriter.dll => 0x8d24e767 => 167
	i32 2371007202, ; 194: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 37
	i32 2388878468, ; 195: Telerik.Android.Input.dll => 0x8e636484 => 74
	i32 2395872292, ; 196: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 197: System.Web.HttpUtility => 0x8f24faee => 165
	i32 2427813419, ; 198: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2430693373, ; 199: Telerik.Maui.Controls => 0x90e16ffd => 78
	i32 2435356389, ; 200: System.Console.dll => 0x912896e5 => 121
	i32 2458678730, ; 201: System.Net.Sockets.dll => 0x928c75ca => 141
	i32 2471841756, ; 202: netstandard.dll => 0x93554fdc => 170
	i32 2475788418, ; 203: Java.Interop.dll => 0x93918882 => 172
	i32 2480646305, ; 204: Microsoft.Maui.Controls => 0x93dba8a1 => 46
	i32 2483903535, ; 205: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 117
	i32 2484371297, ; 206: System.Net.ServicePoint => 0x94147f61 => 140
	i32 2488179576, ; 207: Telerik.Documents.CMapUtils.dll => 0x944e9b78 => 58
	i32 2503351294, ; 208: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2521915375, ; 209: SkiaSharp.Views.Maui.Controls.Compatibility => 0x96515fef => 55
	i32 2538310050, ; 210: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 150
	i32 2539705650, ; 211: Telerik.Maui.Core.dll => 0x9760d532 => 79
	i32 2550873716, ; 212: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2560731213, ; 213: Telerik.Android.Data => 0x98a1a84d => 73
	i32 2562349572, ; 214: Microsoft.CSharp => 0x98ba5a04 => 110
	i32 2576534780, ; 215: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 216: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 158
	i32 2589602615, ; 217: System.Threading.ThreadPool => 0x9a5a3337 => 163
	i32 2593496499, ; 218: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 219: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 108
	i32 2617129537, ; 220: System.Private.Xml.dll => 0x9bfe3a41 => 148
	i32 2620871830, ; 221: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 88
	i32 2625339995, ; 222: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 56
	i32 2626831493, ; 223: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2634641626, ; 224: Telerik.Documents.SpreadsheetStreaming => 0x9d0970da => 70
	i32 2647853659, ; 225: Telerik.Documents.Fixed => 0x9dd30a5b => 61
	i32 2664396074, ; 226: System.Xml.XDocument.dll => 0x9ecf752a => 168
	i32 2665622720, ; 227: System.Drawing.Primitives => 0x9ee22cc0 => 125
	i32 2676780864, ; 228: System.Data.Common.dll => 0x9f8c6f40 => 122
	i32 2724373263, ; 229: System.Runtime.Numerics.dll => 0xa262a30f => 153
	i32 2732626843, ; 230: Xamarin.AndroidX.Activity => 0xa2e0939b => 81
	i32 2735172069, ; 231: System.Threading.Channels => 0xa30769e5 => 160
	i32 2737747696, ; 232: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 83
	i32 2740698338, ; 233: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2744605653, ; 234: Telerik.Documents.Flow.FormatProviders.Pdf => 0xa3975bd5 => 65
	i32 2752995522, ; 235: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 236: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 47
	i32 2764765095, ; 237: Microsoft.Maui.dll => 0xa4caf7a7 => 48
	i32 2778768386, ; 238: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 104
	i32 2782416773, ; 239: Telerik.Documents.Flow.dll => 0xa5d84f85 => 63
	i32 2785988530, ; 240: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2795602088, ; 241: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 53
	i32 2801831435, ; 242: Microsoft.Maui.Graphics => 0xa7008e0b => 50
	i32 2810250172, ; 243: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 86
	i32 2853208004, ; 244: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 104
	i32 2853767236, ; 245: Telerik.Maui.Controls.dll => 0xaa190844 => 78
	i32 2861098320, ; 246: Mono.Android.Export.dll => 0xaa88e550 => 173
	i32 2861189240, ; 247: Microsoft.Maui.Essentials => 0xaa8a4878 => 49
	i32 2866535038, ; 248: Telerik.Documents.Core => 0xaadbda7e => 59
	i32 2868488919, ; 249: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 250: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2912489636, ; 251: SkiaSharp.Views.Android => 0xad9910a4 => 53
	i32 2916838712, ; 252: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 105
	i32 2919462931, ; 253: System.Numerics.Vectors.dll => 0xae037813 => 144
	i32 2959614098, ; 254: System.ComponentModel.dll => 0xb0682092 => 120
	i32 2978675010, ; 255: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 90
	i32 3017953105, ; 256: MauiApp1 => 0xb3e24f51 => 109
	i32 3032926982, ; 257: Telerik.Android.Chart.dll => 0xb4c6cb06 => 71
	i32 3038032645, ; 258: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 259: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 260: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 97
	i32 3059408633, ; 261: Mono.Android.Runtime => 0xb65adef9 => 174
	i32 3059793426, ; 262: System.ComponentModel.Primitives => 0xb660be12 => 118
	i32 3072870390, ; 263: Telerik.Android.Primitives.dll => 0xb72847f6 => 76
	i32 3103600923, ; 264: System.Formats.Asn1 => 0xb8fd311b => 127
	i32 3159123045, ; 265: System.Reflection.Primitives.dll => 0xbc4c6465 => 151
	i32 3178803400, ; 266: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 98
	i32 3205570722, ; 267: Telerik.Documents.Core.dll => 0xbf1120a2 => 59
	i32 3220365878, ; 268: System.Threading => 0xbff2e236 => 164
	i32 3258312781, ; 269: Xamarin.AndroidX.CardView => 0xc235e84d => 84
	i32 3280506390, ; 270: System.ComponentModel.Annotations.dll => 0xc3888e16 => 116
	i32 3290700000, ; 271: Telerik.Documents.Flow => 0xc42418e0 => 63
	i32 3305363605, ; 272: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 273: System.Net.Requests.dll => 0xc5b097e4 => 138
	i32 3317135071, ; 274: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 89
	i32 3320834987, ; 275: Telerik.Zip.dll => 0xc5efebab => 80
	i32 3340387945, ; 276: SkiaSharp => 0xc71a4669 => 52
	i32 3346324047, ; 277: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 99
	i32 3347243934, ; 278: Telerik.Documents.CMapUtils => 0xc782e39e => 58
	i32 3357674450, ; 279: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 280: Xamarin.AndroidX.Core => 0xc86c06e3 => 87
	i32 3366347497, ; 281: Java.Interop => 0xc8a662e9 => 172
	i32 3374999561, ; 282: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 101
	i32 3381016424, ; 283: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 284: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 39
	i32 3430777524, ; 285: netstandard => 0xcc7d82b4 => 170
	i32 3452344032, ; 286: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 45
	i32 3458724246, ; 287: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3466574376, ; 288: SkiaSharp.Views.Maui.Controls.Compatibility.dll => 0xce9fba28 => 55
	i32 3471940407, ; 289: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 119
	i32 3473156932, ; 290: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 54
	i32 3476120550, ; 291: Mono.Android => 0xcf3163e6 => 175
	i32 3484440000, ; 292: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3509114376, ; 293: System.Xml.Linq => 0xd128d608 => 166
	i32 3580758918, ; 294: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3584610821, ; 295: Telerik.Documents.Flow.FormatProviders.Doc.dll => 0xd5a8d205 => 64
	i32 3592228221, ; 296: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 297: System.Linq.dll => 0xd715a361 => 131
	i32 3641597786, ; 298: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 93
	i32 3643446276, ; 299: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 300: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 98
	i32 3653026799, ; 301: Telerik.Documents.Fixed.dll => 0xd9bcc3ef => 61
	i32 3657292374, ; 302: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 38
	i32 3660523487, ; 303: System.Net.NetworkInformation => 0xda2f27df => 136
	i32 3672681054, ; 304: Mono.Android.dll => 0xdae8aa5e => 175
	i32 3724971120, ; 305: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 97
	i32 3732100267, ; 306: System.Net.NameResolution => 0xde7354ab => 135
	i32 3748608112, ; 307: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 123
	i32 3751619990, ; 308: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3774509857, ; 309: Telerik.Documents.Spreadsheet => 0xe0fa7321 => 66
	i32 3786282454, ; 310: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 85
	i32 3792276235, ; 311: System.Collections.NonGeneric => 0xe2098b0b => 113
	i32 3800979733, ; 312: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 45
	i32 3802395368, ; 313: System.Collections.Specialized.dll => 0xe2a3f2e8 => 114
	i32 3807198597, ; 314: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 57
	i32 3817368567, ; 315: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 316: System.Security.Cryptography.dll => 0xe3df9d2b => 157
	i32 3841636137, ; 317: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 40
	i32 3844307129, ; 318: System.Net.Mail.dll => 0xe52378b9 => 134
	i32 3849253459, ; 319: System.Runtime.InteropServices.dll => 0xe56ef253 => 152
	i32 3874567795, ; 320: Telerik.Android.Data.dll => 0xe6f13673 => 73
	i32 3885497537, ; 321: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 143
	i32 3896106733, ; 322: System.Collections.Concurrent.dll => 0xe839deed => 111
	i32 3896760992, ; 323: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 87
	i32 3920221145, ; 324: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 325: System.Xml.ReaderWriter => 0xea213423 => 167
	i32 3931092270, ; 326: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 100
	i32 3955647286, ; 327: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 82
	i32 4010861852, ; 328: Telerik.Android.Primitives => 0xef10e51c => 76
	i32 4025784931, ; 329: System.Memory => 0xeff49a63 => 132
	i32 4046471985, ; 330: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 47
	i32 4051204516, ; 331: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll => 0xf17879a4 => 67
	i32 4054681211, ; 332: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 149
	i32 4068434129, ; 333: System.Private.Xml.Linq.dll => 0xf27f60d1 => 147
	i32 4073602200, ; 334: System.Threading.dll => 0xf2ce3c98 => 164
	i32 4091086043, ; 335: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 336: Microsoft.Maui.Essentials.dll => 0xf40add04 => 49
	i32 4099507663, ; 337: System.Drawing.dll => 0xf45985cf => 126
	i32 4100113165, ; 338: System.Private.Uri => 0xf462c30d => 146
	i32 4103439459, ; 339: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 340: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 39
	i32 4147896353, ; 341: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 149
	i32 4150914736, ; 342: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 343: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 155
	i32 4182413190, ; 344: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 95
	i32 4196529839, ; 345: System.Net.WebClient.dll => 0xfa21f6af => 142
	i32 4213026141, ; 346: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 123
	i32 4249188766, ; 347: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 348: Microsoft.Maui.Controls.dll => 0xfea12dee => 46
	i32 4274976490, ; 349: System.Runtime.Numerics => 0xfecef6ea => 153
	i32 4292120959, ; 350: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 95
	i32 4292429106 ; 351: Telerik.Documents.Flow.FormatProviders.Pdf.dll => 0xffd94532 => 65
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [352 x i32] [
	i32 136, ; 0
	i32 135, ; 1
	i32 0, ; 2
	i32 51, ; 3
	i32 9, ; 4
	i32 162, ; 5
	i32 33, ; 6
	i32 50, ; 7
	i32 17, ; 8
	i32 152, ; 9
	i32 160, ; 10
	i32 32, ; 11
	i32 25, ; 12
	i32 143, ; 13
	i32 116, ; 14
	i32 85, ; 15
	i32 77, ; 16
	i32 103, ; 17
	i32 120, ; 18
	i32 110, ; 19
	i32 79, ; 20
	i32 150, ; 21
	i32 64, ; 22
	i32 62, ; 23
	i32 74, ; 24
	i32 30, ; 25
	i32 81, ; 26
	i32 8, ; 27
	i32 92, ; 28
	i32 140, ; 29
	i32 162, ; 30
	i32 132, ; 31
	i32 163, ; 32
	i32 34, ; 33
	i32 28, ; 34
	i32 115, ; 35
	i32 91, ; 36
	i32 165, ; 37
	i32 155, ; 38
	i32 169, ; 39
	i32 6, ; 40
	i32 145, ; 41
	i32 71, ; 42
	i32 44, ; 43
	i32 52, ; 44
	i32 27, ; 45
	i32 41, ; 46
	i32 77, ; 47
	i32 75, ; 48
	i32 72, ; 49
	i32 68, ; 50
	i32 67, ; 51
	i32 35, ; 52
	i32 89, ; 53
	i32 19, ; 54
	i32 111, ; 55
	i32 139, ; 56
	i32 166, ; 57
	i32 57, ; 58
	i32 109, ; 59
	i32 138, ; 60
	i32 129, ; 61
	i32 25, ; 62
	i32 43, ; 63
	i32 122, ; 64
	i32 146, ; 65
	i32 128, ; 66
	i32 10, ; 67
	i32 68, ; 68
	i32 24, ; 69
	i32 118, ; 70
	i32 21, ; 71
	i32 51, ; 72
	i32 14, ; 73
	i32 92, ; 74
	i32 168, ; 75
	i32 80, ; 76
	i32 23, ; 77
	i32 115, ; 78
	i32 72, ; 79
	i32 102, ; 80
	i32 126, ; 81
	i32 40, ; 82
	i32 82, ; 83
	i32 125, ; 84
	i32 4, ; 85
	i32 130, ; 86
	i32 94, ; 87
	i32 119, ; 88
	i32 107, ; 89
	i32 169, ; 90
	i32 26, ; 91
	i32 20, ; 92
	i32 16, ; 93
	i32 60, ; 94
	i32 22, ; 95
	i32 99, ; 96
	i32 2, ; 97
	i32 90, ; 98
	i32 11, ; 99
	i32 131, ; 100
	i32 31, ; 101
	i32 32, ; 102
	i32 102, ; 103
	i32 86, ; 104
	i32 154, ; 105
	i32 0, ; 106
	i32 127, ; 107
	i32 139, ; 108
	i32 6, ; 109
	i32 112, ; 110
	i32 129, ; 111
	i32 83, ; 112
	i32 44, ; 113
	i32 75, ; 114
	i32 112, ; 115
	i32 128, ; 116
	i32 30, ; 117
	i32 159, ; 118
	i32 142, ; 119
	i32 96, ; 120
	i32 54, ; 121
	i32 105, ; 122
	i32 36, ; 123
	i32 88, ; 124
	i32 133, ; 125
	i32 159, ; 126
	i32 117, ; 127
	i32 156, ; 128
	i32 106, ; 129
	i32 137, ; 130
	i32 157, ; 131
	i32 70, ; 132
	i32 84, ; 133
	i32 1, ; 134
	i32 173, ; 135
	i32 124, ; 136
	i32 103, ; 137
	i32 41, ; 138
	i32 174, ; 139
	i32 17, ; 140
	i32 91, ; 141
	i32 9, ; 142
	i32 96, ; 143
	i32 107, ; 144
	i32 106, ; 145
	i32 100, ; 146
	i32 158, ; 147
	i32 154, ; 148
	i32 42, ; 149
	i32 26, ; 150
	i32 130, ; 151
	i32 151, ; 152
	i32 62, ; 153
	i32 8, ; 154
	i32 2, ; 155
	i32 113, ; 156
	i32 147, ; 157
	i32 13, ; 158
	i32 37, ; 159
	i32 5, ; 160
	i32 94, ; 161
	i32 69, ; 162
	i32 69, ; 163
	i32 148, ; 164
	i32 93, ; 165
	i32 60, ; 166
	i32 4, ; 167
	i32 124, ; 168
	i32 156, ; 169
	i32 144, ; 170
	i32 121, ; 171
	i32 114, ; 172
	i32 48, ; 173
	i32 12, ; 174
	i32 43, ; 175
	i32 42, ; 176
	i32 145, ; 177
	i32 108, ; 178
	i32 133, ; 179
	i32 14, ; 180
	i32 66, ; 181
	i32 161, ; 182
	i32 38, ; 183
	i32 101, ; 184
	i32 141, ; 185
	i32 134, ; 186
	i32 18, ; 187
	i32 171, ; 188
	i32 161, ; 189
	i32 137, ; 190
	i32 56, ; 191
	i32 12, ; 192
	i32 167, ; 193
	i32 37, ; 194
	i32 74, ; 195
	i32 13, ; 196
	i32 165, ; 197
	i32 10, ; 198
	i32 78, ; 199
	i32 121, ; 200
	i32 141, ; 201
	i32 170, ; 202
	i32 172, ; 203
	i32 46, ; 204
	i32 117, ; 205
	i32 140, ; 206
	i32 58, ; 207
	i32 16, ; 208
	i32 55, ; 209
	i32 150, ; 210
	i32 79, ; 211
	i32 11, ; 212
	i32 73, ; 213
	i32 110, ; 214
	i32 15, ; 215
	i32 158, ; 216
	i32 163, ; 217
	i32 20, ; 218
	i32 108, ; 219
	i32 148, ; 220
	i32 88, ; 221
	i32 56, ; 222
	i32 15, ; 223
	i32 70, ; 224
	i32 61, ; 225
	i32 168, ; 226
	i32 125, ; 227
	i32 122, ; 228
	i32 153, ; 229
	i32 81, ; 230
	i32 160, ; 231
	i32 83, ; 232
	i32 1, ; 233
	i32 65, ; 234
	i32 21, ; 235
	i32 47, ; 236
	i32 48, ; 237
	i32 104, ; 238
	i32 63, ; 239
	i32 27, ; 240
	i32 53, ; 241
	i32 50, ; 242
	i32 86, ; 243
	i32 104, ; 244
	i32 78, ; 245
	i32 173, ; 246
	i32 49, ; 247
	i32 59, ; 248
	i32 36, ; 249
	i32 171, ; 250
	i32 53, ; 251
	i32 105, ; 252
	i32 144, ; 253
	i32 120, ; 254
	i32 90, ; 255
	i32 109, ; 256
	i32 71, ; 257
	i32 34, ; 258
	i32 7, ; 259
	i32 97, ; 260
	i32 174, ; 261
	i32 118, ; 262
	i32 76, ; 263
	i32 127, ; 264
	i32 151, ; 265
	i32 98, ; 266
	i32 59, ; 267
	i32 164, ; 268
	i32 84, ; 269
	i32 116, ; 270
	i32 63, ; 271
	i32 7, ; 272
	i32 138, ; 273
	i32 89, ; 274
	i32 80, ; 275
	i32 52, ; 276
	i32 99, ; 277
	i32 58, ; 278
	i32 24, ; 279
	i32 87, ; 280
	i32 172, ; 281
	i32 101, ; 282
	i32 3, ; 283
	i32 39, ; 284
	i32 170, ; 285
	i32 45, ; 286
	i32 22, ; 287
	i32 55, ; 288
	i32 119, ; 289
	i32 54, ; 290
	i32 175, ; 291
	i32 23, ; 292
	i32 166, ; 293
	i32 31, ; 294
	i32 64, ; 295
	i32 33, ; 296
	i32 131, ; 297
	i32 93, ; 298
	i32 28, ; 299
	i32 98, ; 300
	i32 61, ; 301
	i32 38, ; 302
	i32 136, ; 303
	i32 175, ; 304
	i32 97, ; 305
	i32 135, ; 306
	i32 123, ; 307
	i32 3, ; 308
	i32 66, ; 309
	i32 85, ; 310
	i32 113, ; 311
	i32 45, ; 312
	i32 114, ; 313
	i32 57, ; 314
	i32 35, ; 315
	i32 157, ; 316
	i32 40, ; 317
	i32 134, ; 318
	i32 152, ; 319
	i32 73, ; 320
	i32 143, ; 321
	i32 111, ; 322
	i32 87, ; 323
	i32 19, ; 324
	i32 167, ; 325
	i32 100, ; 326
	i32 82, ; 327
	i32 76, ; 328
	i32 132, ; 329
	i32 47, ; 330
	i32 67, ; 331
	i32 149, ; 332
	i32 147, ; 333
	i32 164, ; 334
	i32 5, ; 335
	i32 49, ; 336
	i32 126, ; 337
	i32 146, ; 338
	i32 29, ; 339
	i32 39, ; 340
	i32 149, ; 341
	i32 29, ; 342
	i32 155, ; 343
	i32 95, ; 344
	i32 142, ; 345
	i32 123, ; 346
	i32 18, ; 347
	i32 46, ; 348
	i32 153, ; 349
	i32 95, ; 350
	i32 65 ; 351
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
