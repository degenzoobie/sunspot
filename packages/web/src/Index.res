@react.component
let default = () =>
  <main
    style={ReactDOM.Style.make(~maxWidth="725px", ())}
    className={Cn.make([
      "px-12",
      "py-12",
      "font-mono",
      "flex",
      "flex-col",
      "flex-1",
      "overflow-y-auto",
      "bg-white",
    ])}>
    <section className={Cn.make(["mb-12"])}>
      <p className={Cn.make(["mb-2"])}>
        <b> {React.string("sunspot")} </b>
        {React.string(
          " alerts you in real-time when listing and sales of ethereum nfts occur on opensea.",
        )}
      </p>
      <ul className={Cn.make(["list-disc", "list-inside"])}>
        <li>
          <Externals.Next.Link href="/alerts">
            <a className={Cn.make(["underline", "font-bold"])}> {React.string("launch app")} </a>
          </Externals.Next.Link>
        </li>
        <li>
          <a className={Cn.make(["underline", "font-bold"])} href={Config.discordOAuthUrl}>
            {React.string("install discord bot")}
          </a>
        </li>
      </ul>
    </section>
    <section className={Cn.make(["mb-12"])}>
      <p className={Cn.make(["mb-2", "font-bold"])}> {React.string("use cases:")} </p>
      <ul className={Cn.make(["list-disc", "list-inside"])}>
        <li> {React.string("snipe mispriced assets at time of listing")} </li>
        <li> {React.string("monitor collection average price and volume activity")} </li>
        <li> {React.string("create a discord sales bot for your project")} </li>
        <li> {React.string("get notified when your active listing is undercut")} </li>
      </ul>
    </section>
    <section className={Cn.make(["mb-12"])}>
      <p className={Cn.make(["mb-2", "font-bold"])}> {React.string("features:")} </p>
      <ul className={Cn.make(["list-disc", "list-inside"])}>
        <li> {React.string("real time event ingestion and alert dispatch pipeline")} </li>
        <li> {React.string("create alert rules with price threshold and traits")} </li>
        <li> {React.string("alerts delivered via browser push notification or discord bot")} </li>
        <li> {React.string("free to use and open source")} </li>
      </ul>
    </section>
    <section className={Cn.make(["mb-10"])}>
      <p className={Cn.make(["mb-2", "font-bold"])}> {React.string("etc:")} </p>
      <ul className={Cn.make(["list-disc", "list-inside"])}>
        <li>
          <a className={Cn.make(["underline"])} href="https://discord.gg/y3wcMgagsF">
            {React.string("discord")}
          </a>
        </li>
        <li>
          <a className={Cn.make(["underline"])} href="https://twitter.com/javamonnn">
            {React.string("twitter")}
          </a>
        </li>
        <li>
          <a className={Cn.make(["underline"])} href="https://github.com/javamonn/sunspot">
            {React.string("github")}
          </a>
        </li>
      </ul>
    </section>
  </main>
