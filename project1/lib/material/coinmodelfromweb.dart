// class AutoGenerate {
//   AutoGenerate({
//     required this.status,
//     required this.data,
//   });
//   late final String status;
//   late final Data data;
  
//   AutoGenerate.fromJson(Map<String, dynamic> json){
//     status = json['status'];
//     data = Data.fromJson(json['data']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['status'] = status;
//     _data['data'] = data.toJson();
//     return _data;
//   }
// }

// class Data {
//   Data({
//     required this.stats,
//     required this.coins,
//   });
//   late final Stats stats;
//   late final List<Coins> coins;
  
//   Data.fromJson(Map<String, dynamic> json){
//     stats = Stats.fromJson(json['stats']);
//     coins = List.from(json['coins']).map((e)=>Coins.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['stats'] = stats.toJson();
//     _data['coins'] = coins.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }

// class Stats {
//   Stats({
//     required this.total,
//     required this.referenceCurrencyRate,
//     required this.totalCoins,
//     required this.totalMarkets,
//     required this.totalExchanges,
//     required this.totalMarketCap,
//     required this.total24hVolume,
//     required this.btcDominance,
//     required this.bestCoins,
//     required this.newestCoins,
//   });
//   late final int total;
//   late final int referenceCurrencyRate;
//   late final int totalCoins;
//   late final int totalMarkets;
//   late final int totalExchanges;
//   late final String totalMarketCap;
//   late final String total24hVolume;
//   late final double btcDominance;
//   late final List<BestCoins> bestCoins;
//   late final List<NewestCoins> newestCoins;
  
//   Stats.fromJson(Map<String, dynamic> json){
//     total = json['total'];
//     referenceCurrencyRate = json['referenceCurrencyRate'];
//     totalCoins = json['totalCoins'];
//     totalMarkets = json['totalMarkets'];
//     totalExchanges = json['totalExchanges'];
//     totalMarketCap = json['totalMarketCap'];
//     total24hVolume = json['total24hVolume'];
//     btcDominance = json['btcDominance'];
//     bestCoins = List.from(json['bestCoins']).map((e)=>BestCoins.fromJson(e)).toList();
//     newestCoins = List.from(json['newestCoins']).map((e)=>NewestCoins.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['total'] = total;
//     _data['referenceCurrencyRate'] = referenceCurrencyRate;
//     _data['totalCoins'] = totalCoins;
//     _data['totalMarkets'] = totalMarkets;
//     _data['totalExchanges'] = totalExchanges;
//     _data['totalMarketCap'] = totalMarketCap;
//     _data['total24hVolume'] = total24hVolume;
//     _data['btcDominance'] = btcDominance;
//     _data['bestCoins'] = bestCoins.map((e)=>e.toJson()).toList();
//     _data['newestCoins'] = newestCoins.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }

// class BestCoins {
//   BestCoins({
//     required this.uuid,
//     required this.symbol,
//     required this.name,
//     required this.iconUrl,
//     required this.coinrankingUrl,
//   });
//   late final String uuid;
//   late final String symbol;
//   late final String name;
//   late final String iconUrl;
//   late final String coinrankingUrl;
  
//   BestCoins.fromJson(Map<String, dynamic> json){
//     uuid = json['uuid'];
//     symbol = json['symbol'];
//     name = json['name'];
//     iconUrl = json['iconUrl'];
//     coinrankingUrl = json['coinrankingUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['uuid'] = uuid;
//     _data['symbol'] = symbol;
//     _data['name'] = name;
//     _data['iconUrl'] = iconUrl;
//     _data['coinrankingUrl'] = coinrankingUrl;
//     return _data;
//   }
// }

// class NewestCoins {
//   NewestCoins({
//     required this.uuid,
//     required this.symbol,
//     required this.name,
//     required this.iconUrl,
//     required this.coinrankingUrl,
//   });
//   late final String uuid;
//   late final String symbol;
//   late final String name;
//   late final String iconUrl;
//   late final String coinrankingUrl;
  
//   NewestCoins.fromJson(Map<String, dynamic> json){
//     uuid = json['uuid'];
//     symbol = json['symbol'];
//     name = json['name'];
//     iconUrl = json['iconUrl'];
//     coinrankingUrl = json['coinrankingUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['uuid'] = uuid;
//     _data['symbol'] = symbol;
//     _data['name'] = name;
//     _data['iconUrl'] = iconUrl;
//     _data['coinrankingUrl'] = coinrankingUrl;
//     return _data;
//   }
// }

// class Coins {
//   Coins({
//     required this.uuid,
//     required this.symbol,
//     required this.name,
//      this.color,
//     required this.iconUrl,
//     required this.marketCap,
//     required this.price,
//     required this.listedAt,
//     required this.tier,
//     required this.change,
//     required this.rank,
//     required this.sparkline,
//     required this.lowVolume,
//     required this.coinrankingUrl,
//     required this.24hVolume,
//     required this.btcPrice,
//   });
//   late final String uuid;
//   late final String symbol;
//   late final String name;
//   late final String? color;
//   late final String iconUrl;
//   late final String marketCap;
//   late final String price;
//   late final int listedAt;
//   late final int tier;
//   late final String change;
//   late final int rank;
//   late final List<String> sparkline;
//   late final bool lowVolume;
//   late final String coinrankingUrl;
//   late final String 24hVolume;
//   late final String btcPrice;
  
//   Coins.fromJson(Map<String, dynamic> json){
//     uuid = json['uuid'];
//     symbol = json['symbol'];
//     name = json['name'];
//     color = null;
//     iconUrl = json['iconUrl'];
//     marketCap = json['marketCap'];
//     price = json['price'];
//     listedAt = json['listedAt'];
//     tier = json['tier'];
//     change = json['change'];
//     rank = json['rank'];
//     sparkline = List.castFrom<dynamic, String>(json['sparkline']);
//     lowVolume = json['lowVolume'];
//     coinrankingUrl = json['coinrankingUrl'];
//     24hVolume = json['24hVolume'];
//     btcPrice = json['btcPrice'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['uuid'] = uuid;
//     _data['symbol'] = symbol;
//     _data['name'] = name;
//     _data['color'] = color;
//     _data['iconUrl'] = iconUrl;
//     _data['marketCap'] = marketCap;
//     _data['price'] = price;
//     _data['listedAt'] = listedAt;
//     _data['tier'] = tier;
//     _data['change'] = change;
//     _data['rank'] = rank;
//     _data['sparkline'] = sparkline;
//     _data['lowVolume'] = lowVolume;
//     _data['coinrankingUrl'] = coinrankingUrl;
//     _data['24hVolume'] = 24hVolume;
//     _data['btcPrice'] = btcPrice;
//     return _data;
//   }
// }