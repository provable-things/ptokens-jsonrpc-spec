# pTokens bridge JSON-RPC Specification

[View the spec][playground]

The pTokens JSON-RPC is a collection of methods that all bridges implement.

## Building

The specification is split into multiple files to improve readability. It
can be compiled the spec into a single document as follows:

```console
$ npm install
$ npm run build
Build successful.
```

This will output the file `openrpc.json` in the root of the project. This file
will have all schema `#ref`s resolved.

## Contributing

The specification is written in [OpenRPC][openrpc]. Refer to the
OpenRPC specification and the JSON schema specification to get started.

### Testing

There are currently twp tools for testing contributions. The main one that
runs as GitHub action is the [OpenRPC validator][validator]:

```console
$ npm install
$ npm run lint
OpenRPC spec validated successfully.
```

The third tool can validate a live JSON-RPC provider against the specification:

```console
$ ./scripts/debug.sh https://pbtconbsc-node-1a.eu.ngrok.io/v2/pbtc-on-bsc/ app_queryReport \"native\",2
data.json valid
```

## License

This repository is licensed under [MIT](LICENSE).


[playground]: https://playground.open-rpc.org/?schemaUrl=https://raw.githubusercontent.com/pnetwork-association/ptokens-jsonrpc-spec/assembled-spec/openrpc.json&uiSchema[appBar][ui:splitView]=false&uiSchema[appBar][ui:input]=false&uiSchema[appBar][ui:examplesDropdown]=false&uiSchema[appBar][ui:title]=pTokens&uiSchema[appBar][ui:logoUrl]=https://avatars.githubusercontent.com/u/120671018?s=200&v=4
[openrpc]: https://open-rpc.org
[validator]: https://open-rpc.github.io/schema-utils-js/globals.html#validateopenrpcdocument
