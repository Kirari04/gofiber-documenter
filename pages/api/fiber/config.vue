<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>📦 Fiber - Config</H1>
            <P>
                You can pass an optional Config when creating a new Fiber
                instance.
            </P>
            <P> Example </P>
            <Code path="/snippets/fiber-config-1" />
            <H2>Config fields</H2>
            <div class="flex flex-col gap-2">
                <Collapse>
                    <template #title>
                        AppName <Tag>String</Tag> <Tag>""</Tag>
                    </template>
                    <template #desc>
                        <P>This allows to setup app name for the app</P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        BodyLimit <Tag>int</Tag> <Tag>4 * 1024 * 1024</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Sets the maximum allowed size for a request body, if
                            the size exceeds the configured limit, it sends
                            <Tag>413 - Request Entity Too Large</Tag>
                            response.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        CaseSensitive <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When enabled, <Tag>/Foo</Tag> and
                            <Tag>/foo</Tag> are different routes. When disabled,
                            <Tag>/Foo</Tag> and <Tag>/foo</Tag> are treated the
                            same.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ColorScheme <Tag>Colors</Tag> <Tag>DefaultColors</Tag>
                    </template>
                    <template #desc>
                        <P>
                            You can define custom color scheme. They'll be used
                            for startup message, route list and some
                            middlewares.
                        </P>
                        <P>
                            Lookup Colors & DefaultColors in
                            <Ref
                                href="https://github.com/gofiber/fiber/blob/master/color.go"
                                :blank="true"
                            >
                                color.go
                            </Ref>
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        CompressedFileSuffix <Tag>string</Tag>
                        <Tag>".fiber.gz"</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Adds a suffix to the original file name and tries
                            saving the resulting compressed file under the new
                            file name.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        Concurrency <Tag>int</Tag> <Tag>256 * 1024</Tag>
                    </template>
                    <template #desc>
                        <P> Maximum number of concurrent connections. </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisableDefaultContentType <Tag>bool</Tag>
                        <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When set to true, causes the default Content-Type
                            header to be excluded from the Response.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisableDefaultDate <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When set to true causes the default date header to
                            be excluded from the response.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisableHeaderNormalizing <Tag>bool</Tag>
                        <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            By default all header names are normalized:
                            <Tag>conteNT-tYPE</Tag> -> <Tag>Content-Type</Tag>
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisableKeepalive <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Disable keep-alive connections, the server will
                            close incoming connections after sending the first
                            response to the client
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisablePreParseMultipartForm <Tag>bool</Tag>
                        <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Will not pre parse Multipart Form data if set to
                            true. This option is useful for servers that desire
                            to treat multipart form data as a binary blob, or
                            choose when to parse the data.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        DisableStartupMessage <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When set to true, it will not print out debug
                            information
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ETag <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Enable or disable ETag header generation, since both
                            weak and strong etags are generated using the same
                            hashing method (CRC-32). Weak ETags are the default
                            when enabled.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        EnableIPValidation <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            If set to true, <Tag>c.IP()</Tag> and
                            <Tag>c.IPs()</Tag> will validate IP addresses before
                            returning them. Also, <Tag>c.IP()</Tag> will return
                            only the first valid IP rather than just the raw
                            header value that may be a comma seperated string.
                        </P>
                        <div class="alert alert-warning">
                            <Icon icon="warning" />
                            <span>
                                <B>WARNING</B>: There is a small performance
                                cost to doing this validation. Keep disabled if
                                speed is your only concern and your application
                                is behind a trusted proxy that already validates
                                this header.
                            </span>
                        </div>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        EnablePrintRoutes <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            EnablePrintRoutes enables print all routes with
                            their method, path, name and handler.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        EnableTrustedProxyCheck <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When set to true, fiber will check whether proxy is
                            trusted, using TrustedProxies list.
                        </P>
                        <P>
                            By default: <br />
                            <Tag>c.Protocol()</Tag> will get value from
                            <B>X-Forwarded-Proto</B>,
                            <B>X-Forwarded-Protocol</B>,
                            <B>X-Forwarded-Ssl</B> or
                            <B>X-Url-Scheme</B> header,<br />
                            <Tag>c.IP()</Tag> will get value from
                            <B>ProxyHeader</B> header, <br />
                            <Tag>c.Hostname()</Tag> will get value from
                            <B>X-Forwarded-Host</B> header.
                        </P>
                        <P>
                            If
                            <B>EnableTrustedProxyCheck</B> is true, and
                            <B>RemoteIP</B> is in the list of TrustedProxies
                            <Tag>c.Protocol()</Tag>, <Tag>c.IP()</Tag>, and
                            <Tag>c.Hostname()</Tag> will have the same behaviour
                            when <B>EnableTrustedProxyCheck</B> disabled, if
                            <B>RemoteIP</B> isn't in the list,
                            <Tag>c.Protocol()</Tag> will return https in case
                            when tls connection is handled by the app, or http
                            otherwise, <Tag>c.IP()</Tag> will return
                            <Tag>RemoteIP()</Tag> from fasthttp context,
                            <Tag>c.Hostname()</Tag> will return
                            <Tag>fasthttp.Request.URI().Host()</Tag>
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ErrorHandler <Tag>ErrorHandler</Tag>
                        <Tag>DefaultErrorHandler</Tag>
                    </template>
                    <template #desc>
                        <P>
                            ErrorHandler is executed when an error is returned
                            from fiber.Handler. Mounted fiber error handlers are
                            retained by the top-level app and applied on prefix
                            associated requests.
                        </P>
                        Learn more about the
                        <nuxtLink
                            to="/guide/error-handling/default-error-handler"
                            class="link link-hover link-primary"
                        >
                            Default Error handler
                        </nuxtLink>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        GETOnly <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Rejects all non-GET requests if set to true. This
                            option is useful as anti-DoS protection for servers
                            accepting only GET requests. The request size is
                            limited by ReadBufferSize if GETOnly is set.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        IdleTimeout <Tag>time.Duration</Tag> <Tag>nil</Tag>
                    </template>
                    <template #desc>
                        <P>
                            The maximum amount of time to wait for the next
                            request when keep-alive is enabled. If IdleTimeout
                            is zero, the value of ReadTimeout is used.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        Immutable <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When enabled, all values returned by context methods
                            are immutable. By default, they are valid until you
                            return from the handler.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        JSONDecoder <Tag>utils.JSONUnmarshal</Tag>
                        <Tag>json.Unmarshal</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Allowing for flexibility in using another json
                            library for decoding.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        JSONEncoder <Tag>utils.JSONMarshal</Tag>
                        <Tag>json.Marshal</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Allowing for flexibility in using another json
                            library for encoding.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        Network <Tag>string</Tag> <Tag>NetworkTCP4</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Known networks are "tcp", "tcp4" (IPv4-only), "tcp6"
                            (IPv6-only)
                        </P>
                        <div class="alert alert-warning">
                            <Icon icon="warning" />
                            <span>
                                <B>WARNING</B>: When prefork is set to true,
                                only "tcp4" and "tcp6" can be chosen.
                            </span>
                        </div>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        PassLocalsToViews <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            PassLocalsToViews Enables passing of the locals set
                            on a fiber.Ctx to the template engine. See our
                            Template Middleware for supported engines.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        Prefork <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Enables use of the SO_REUSEPORT socket option. This
                            will spawn multiple Go processes listening on the
                            same port.
                        </P>
                        <P>
                            learn more about
                            <Ref
                                href="https://www.nginx.com/blog/socket-sharding-nginx-release-1-9-1/"
                                :blank="true"
                            >
                                socket sharding</Ref
                            >.
                        </P>
                        <div class="alert alert-info">
                            <Icon icon="info" />
                            <span>
                                <P>
                                    You can check with
                                    <Tag>fiber.IsChild()</Tag> whether the
                                    current process is the
                                    <B>main process</B> or a
                                    <B>child process</B>
                                </P>
                                <nuxtLink class="btn" to="/api/fiber/ischild"
                                    >Learn more</nuxtLink
                                >
                            </span>
                        </div>
                        <br />
                        <div class="alert alert-warning">
                            <Icon icon="warning" />
                            <span>
                                <B>WARNING</B>: If enabled, the application will
                                need to be ran through a shell because prefork
                                mode sets environment variables. If you're using
                                Docker, make sure the app is ran with
                                <Tag>CMD ./app</Tag> or
                                <Tag>CMD ["sh", "-c", "/app"]</Tag>. For more
                                info, see
                                <Ref
                                    href="https://github.com/gofiber/fiber/issues/1021#issuecomment-730537971"
                                    :blank="true"
                                    >this</Ref
                                >
                                issue comment.
                                <P>
                                    If you don't understand the functionality of
                                    <B>Prefork</B> it is recommended to leave it
                                    <B>disabled</B>.
                                </P>
                            </span>
                        </div>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ProxyHeader <Tag>string</Tag> <Tag>""</Tag>
                    </template>
                    <template #desc>
                        <P>
                            This will enable <Tag>c.IP()</Tag> to return the
                            value of the given header key. By default
                            <Tag>c.IP()</Tag> will return the Remote IP from the
                            TCP connection, this property can be useful if you
                            are behind a load balancer e.g. X-Forwarded-*.
                        </P>
                        <P>
                            If fiber sits behind a load balancer or cdn that
                            forwards the real ip address of the user in the
                            Header
                            <B>User-Ip</B> instead of
                            <B>X-Forwarded-For </B>
                            <Tag>ProxyHeader</Tag> should be set to
                            <Tag>"User-Ip"</Tag>
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ReadBufferSize <Tag>int</Tag> <Tag>4096</Tag>
                    </template>
                    <template #desc>
                        <P>
                            per-connection buffer size for requests' reading.
                            This also limits the maximum header size. Increase
                            this buffer if your clients send multi-KB
                            RequestURIs and/or multi-KB headers (for example,
                            BIG cookies).
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ReadTimeout <Tag>time.Duration</Tag> <Tag>nil</Tag>
                    </template>
                    <template #desc>
                        <P>
                            The amount of time allowed to read the full request,
                            including the body. The default timeout is
                            unlimited.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        RequestMethods <Tag>[]string</Tag>
                        <Tag>DefaultMethods</Tag>
                    </template>
                    <template #desc>
                        <P>
                            RequestMethods provides customizibility for HTTP
                            methods. You can add/remove methods as you wish.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ServerHeader <Tag>string</Tag> <Tag>""</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Enables the <B>Server</B> HTTP header with the given
                            value.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        StreamRequestBody <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            StreamRequestBody enables request body streaming,
                            and calls the handler sooner when given body is
                            larger then the current limit.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        StrictRouting <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            When enabled, the router treats <Tag>/foo</Tag> and
                            <Tag>/foo/</Tag> as different. Otherwise, the router
                            treats <Tag>/foo</Tag> and <Tag>/foo/</Tag> as the
                            same.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        TrustedProxies <Tag>[]string</Tag>
                        <Tag>[]string*__*</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Contains the list of trusted proxy IP's. Look at
                            <Tag>EnableTrustedProxyCheck</Tag> doc. It can take
                            IP or IP range addresses. If it gets IP range, it
                            iterates all possible addresses.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        UnescapePath <Tag>bool</Tag> <Tag>false</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Converts all encoded characters in the route back
                            before setting the path for the context, so that the
                            routing can also work with URL encoded special
                            characters
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        Views <Tag>Views</Tag> <Tag>nil</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Views is the interface that wraps the Render
                            function. See our
                            <nuxtLink
                                to="/guide/templates/engines"
                                class="link link-hover link-primary"
                            >
                                Template guide
                            </nuxtLink>
                            for supported engines.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        ViewsLayout
                        <Tag>string</Tag>
                        <Tag>""</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Views Layout is the global layout for all template
                            render until override on Render function. See our
                            Template Middleware for supported engines.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        WriteBufferSize <Tag>int</Tag> <Tag>4096</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Per-connection buffer size for responses' writing.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        WriteTimeout <Tag>time.Duration</Tag> <Tag>nil</Tag>
                    </template>
                    <template #desc>
                        <P>
                            The maximum duration before timing out writes of the
                            response. The default timeout is unlimited.
                        </P>
                    </template>
                </Collapse>
                <Collapse>
                    <template #title>
                        XMLEncoder <Tag>utils.XMLMarshal</Tag>
                        <Tag>xml.Marshal</Tag>
                    </template>
                    <template #desc>
                        <P>
                            Allowing for flexibility in using another XML
                            library for encoding.
                        </P>
                    </template>
                </Collapse>
            </div>
        </div>
        <SubMenu :menu-items="subMenuFiber" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuFiber" />
</template>

<script lang="ts" setup>
const title = "Fiber | 📦 Fiber - Config";
const description = "You can pass an optional Config when creating a new Fiber instance."
useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
