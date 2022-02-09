@module("./aws-exports.js")
external awsAmplifyConfig: Externals_AWSAmplify.Config.t = "default"

@val external nodeEnv: string = "process.env.NODE_ENV"
let isProduction = nodeEnv == "production"
let isBrowser = () => %raw(`typeof window !== 'undefined'`)

let openstoreContractAddress = "0x495f947276749ce646f68ac8c248420045cb7b5e"

let sentryDsn = "https://46f76de2bfc64d10a89fc90865bb1d47@o1060100.ingest.sentry.io/6049323"
let amplitudeApiKey = "12b1c3f0609d7a9a382a5359a9f0e97e"

let discord1ClientId = "909830001363394593"
let discord2ClientId = "938507879974043679"
let discord3ClientId = "938802177223303198"
let discord4ClientId = "939216494129209444"
let discord5ClientId = "939764059039993886"
let discord6ClientId = "940435782827646976"

let activeDiscordClientId = discord6ClientId
let activeDiscordClient = if activeDiscordClientId == discord1ClientId {
  #DISCORD
} else if activeDiscordClientId == discord2ClientId {
  #DISCORD_2
} else if activeDiscordClientId == discord3ClientId {
  #DISCORD_3
} else if activeDiscordClientId == discord4ClientId {
  #DISCORD_4
} else if activeDiscordClientId == discord5ClientId {
  #DISCORD_5
} else {
  #DISCORD_6
}

let discordOAuthUrl = isProduction
  ? `https://discord.com/api/oauth2/authorize?client_id=${activeDiscordClientId}&permissions=19456&redirect_uri=https%3A%2F%2Fsunspot.gg%2Fintegrations%2Fdiscord%2Finstall&response_type=code&scope=guilds%20bot%20applications.commands`
  : `https://discord.com/api/oauth2/authorize?client_id=${activeDiscordClientId}&permissions=19456&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fintegrations%2Fdiscord%2Finstall&response_type=code&scope=guilds%20bot%20applications.commands`

let slackOAuthUrl = "https://slack.com/oauth/v2/authorize?client_id=2851595757074.2853916229636&scope=incoming-webhook&user_scope="

let twitterOAuthUrl = isProduction
  ? "https://twitter.com/i/oauth2/authorize?response_type=code&client_id=clVTSDN2eDc2SExyNzFfdHNhNVc6MTpjaQ&redirect_uri=https%3A%2F%2Fsunspot.gg%2Fintegrations%2Ftwitter%2Finstall&scope=tweet.write%20users.read%20tweet.read%20offline.access&state=state&code_challenge=challenge&code_challenge_method=plain"
  : "https://twitter.com/i/oauth2/authorize?response_type=code&client_id=clVTSDN2eDc2SExyNzFfdHNhNVc6MTpjaQ&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fintegrations%2Ftwitter%2Finstall&scope=tweet.write%20users.read%20tweet.read%20offline.access&state=state&code_challenge=challenge&code_challenge_method=plain"
