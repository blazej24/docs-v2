---
title: InfluxDB 1.x compatibility API
description: >
  The InfluxDB v2 API includes InfluxDB 1.x compatibility endpoints that work with
  InfluxDB 1.x client libraries and third-party integrations like [Grafana](https://grafana.com) and others.
menu:
  influxdb_cloud_ref:
    name: 1.x compatibility
    parent: InfluxDB v2 API
weight: 104
influxdb/cloud/tags: [influxql, query, write]
products: [cloud]
related:
  - /influxdb/cloud/query-data/influxql
---

The InfluxDB v2 API includes InfluxDB 1.x compatibility `/write` and `/query`
endpoints that work with InfluxDB 1.x client libraries and third-party integrations
like [Grafana](https://grafana.com) and others.

<a class="btn" href="/influxdb/cloud/api/v1-compatibility/">View full v1 compatibility API documentation</a>

## Authentication

{{% cloud %}}
InfluxDB Cloud requires all query and write requests to be authenticated using
[InfluxDB authentication tokens](/influxdb/cloud/security/tokens/).
{{% /cloud %}}

Use the following authentication methods:

- [Token authentication](#token-authentication)
- [Basic authentication](#basic-authentication)

### Token authentication
Token authentication requires the following credential:

- **token**: InfluxDB [authentication token](/influxdb/cloud/security/tokens/)

Use the `Authorization` header with the `Token` scheme to provide your
authentication token to InfluxDB.

##### Syntax
```sh
Authorization: Token <token>
```
##### Example
{{% code-tabs-wrapper %}}
{{% code-tabs %}}
[curl](#curl)
[Node.js](#nodejs)
{{% /code-tabs %}}
{{% code-tab-content %}}
```sh
{{% api/v1-compat/auth/token-curl %}}
```
{{% /code-tab-content %}}
{{% code-tab-content %}}
```js
{{% api/v1-compat/auth/token-js %}}
```
{{% /code-tab-content %}}
{{% /code-tabs-wrapper %}}

### Basic authentication
Basic authentication requires the following credentials:

- **username**: InfluxDB Cloud username
- **password**: InfluxDB Cloud [authentication token](/influxdb/cloud/security/tokens/)

#### Syntax
```sh
<username>:<password>
```
#### Example
{{% code-tabs-wrapper %}}
{{% code-tabs %}}
[curl](#curl)
[Node.js](#nodejs)
{{% /code-tabs %}}
{{% code-tab-content %}}
```sh
{{% api/v1-compat/auth/username-curl %}}
```
{{% /code-tab-content %}}
{{% code-tab-content %}}
```js
{{% api/v1-compat/auth/username-js %}}
```
{{% /code-tab-content %}}
{{% /code-tabs-wrapper %}}

## InfluxQL support

The compatibility API supports InfluxQL, with the following caveats:

- The `INTO` clause (e.g. `SELECT ... INTO ...`) is not supported.
- With the exception of [`DELETE`](/{{< latest "influxdb" "v1" >}}/query_language/manage-database/#delete-series-with-delete) and
  [`DROP MEASUREMENT`](/{{< latest "influxdb" "v1" >}}/query_language/manage-database/#delete-measurements-with-drop-measurement) queries, which are still allowed,
  InfluxQL database management commands are not supported.

## Compatibility endpoints

{{< children readmore=true >}}
