# ortelius-ms-scorecard

![Release](https://img.shields.io/github/v/release/ortelius/ms-scorecard?sort=semver)
![license](https://img.shields.io/github/license/ortelius/.github)

![Build](https://img.shields.io/github/actions/workflow/status/ortelius/ms-scorecard/build-push-chart.yml)
[![MegaLinter](https://github.com/ortelius/ms-scorecard/workflows/MegaLinter/badge.svg?branch=main)](https://github.com/ortelius/ms-scorecard/actions?query=workflow%3AMegaLinter+branch%3Amain)
![CodeQL](https://github.com/ortelius/ms-scorecard/workflows/CodeQL/badge.svg)
[![OpenSSF
-Scorecard](https://api.securityscorecards.dev/projects/github.com/ortelius/ms-scorecard/badge)](https://api.securityscorecards.dev/projects/github.com/ortelius/ms-scorecard)

![Discord](https://img.shields.io/discord/722468819091849316)

> Version 0.1.0

ortelius-ms-scorecard


## Path Table

| Method | Path | Description |
| --- | --- | --- |
| GET | [/health](#gethealth) | Health |
| GET | [/msapi/scorecard](#getmsapiscorecard) | Get Scorecard |

## Reference Table

| Name | Path | Description |
| --- | --- | --- |
| HTTPValidationError | [#/components/schemas/HTTPValidationError](#componentsschemashttpvalidationerror) |  |
| ScoreCard | [#/components/schemas/ScoreCard](#componentsschemasscorecard) |  |
| StatusMsg | [#/components/schemas/StatusMsg](#componentsschemasstatusmsg) |  |
| ValidationError | [#/components/schemas/ValidationError](#componentsschemasvalidationerror) |  |

## Path Details

***

### [GET]/health

- Summary  
Health

- Operation id  
health_health_get

- Description  
This health check end point used by Kubernetes

#### Responses

- 200 Successful Response

`application/json`

```typescript
{
  status?: string
  service_name?: string
}
```

***

### [GET]/msapi/scorecard

- Summary  
Get Scorecard

- Operation id  
get_scorecard_msapi_scorecard_get

#### Parameters(Query)

```typescript
frequency?: Partial(string) & Partial(null)
```

```typescript
environment?: Partial(string) & Partial(null)
```

```typescript
lag?: Partial(string) & Partial(null)
```

```typescript
appname?: Partial(string) & Partial(null)
```

```typescript
appid?: Partial(string) & Partial(null)
```

#### Responses

- 200 Successful Response

`application/json`

```typescript
{
  domain?: string
[]
[]
}
```

- 422 Validation Error

`application/json`

```typescript
{
  detail: {
    loc?: Partial(string) & Partial(integer)[]
    msg: string
    type: string
    ctx: {
    }
  }[]
}
```

## References

### #/components/schemas/HTTPValidationError

```typescript
{
  detail: {
    loc?: Partial(string) & Partial(integer)[]
    msg: string
    type: string
    ctx: {
    }
  }[]
}
```

### #/components/schemas/ScoreCard

```typescript
{
  domain?: string
[]
[]
}
```

### #/components/schemas/StatusMsg

```typescript
{
  status?: string
  service_name?: string
}
```

### #/components/schemas/ValidationError

```typescript
{
  loc?: Partial(string) & Partial(integer)[]
  msg: string
  type: string
  ctx: {
  }
}
```
