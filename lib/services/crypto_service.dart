import 'package:busha_test/app/app.locator.dart';
import 'package:busha_test/enum/http_request.dart';
import 'package:busha_test/models/block_transaction.dart';
import 'package:busha_test/models/lastest_block.dart';
import 'package:busha_test/models/tezos_response.dart';
import 'package:busha_test/services/network_service.dart';

class CryptoService {
  final _networkService = locator<NetworkService>();

  Future<LatestBlock?> fetchLatestBlock() async {
    final response = await _networkService.makeHttpRequest(
      request: HttpRequest.get,
      path: 'https://blockchain.info/latestblock',
    );

    return LatestBlock.fromJson(response);
  }

  Future<BlockTransaction?> fetchBlockTransactions({
    required String blockHash,
  }) async {
    final response = await _networkService.makeHttpRequest(
      request: HttpRequest.get,
      path: 'https://blockchain.info/rawblock/$blockHash',
    );

    return BlockTransaction.fromJson(response);
  }

  Future<List<TezosResponse?>> fetchTezosBlocks() async {
    final response = await _networkService.makeHttpRequest(
      request: HttpRequest.get,
      path: 'https://api.tzkt.io/v1/blocks',
    );

    return response
            ?.map<TezosResponse?>((block) => TezosResponse.fromJson(block))
            ?.toList() ??
        [];
  }
}
