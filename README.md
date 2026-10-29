> **Part of the [QorVertex live demo](https://qorvertex.com).** A small sample application that shows one Kafka topic (`orders`) that services in five languages publish to and consume, coupled only by its name. It is intentionally minimal and not production code.

# ruby-order-consumer

A QorVertex sample application. Consumes `orders` (Kafka, via karafka's routing DSL),
`billing-jobs` (SQS, via a Shoryuken worker) and `inventory-sync` (Redis) — the
same channels the Go, Java, C#, Python and TypeScript fixtures use, so the
cross-language coupling is by NAME only.

Not a real application; it exists to exercise the Ruby messaging extractor (RB4).
