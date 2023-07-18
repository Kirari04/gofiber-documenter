<template>
    <div class="flex grow">
        <div class="flex flex-col grow">
            <H1>Basic routing</H1>
            <P>
                Routing refers to determining how an application responds to a
                client request to a particular endpoint, which is a URI (or
                path) and a specific HTTP request method (<Tag>GET</Tag>,
                <Tag>PUT</Tag>, <Tag>POST</Tag>, etc.).
            </P>
            <P>
                Each route can have <B>multiple handler</B> functions that are
                executed when the route is matched.
            </P>
            <P>Route definition takes the following structures:</P>

            <Code path="/snippets/basic-routing-1" />

            <ul class="list-disc p-4">
                <li><Tag>app</Tag> is an instance of Fiber</li>
                <li>
                    <Tag>Method</Tag> is an
                    <Ref href="/api/app/route-handlers" :blank="true"
                        >HTTP request method</Ref
                    >: GET, PUT, POST, etc.
                </li>
                <li><Tag>path</Tag> is a virtual path on the server</li>
                <li>
                    <Tag>func(*fiber.Ctx) error</Tag> is a callback function
                    containing the
                    <Ref href="/api/ctx" :blank="true">Context</Ref> executed
                    when the route is matched
                </li>
            </ul>

            <H2> Simple route </H2>
            <Code path="/snippets/basic-routing-2" />
            <H2> Parameters </H2>
            <Code path="/snippets/basic-routing-3" />
            <H2> Optional parameter </H2>
            <Code path="/snippets/basic-routing-4" />
            <H2> Wildcards </H2>
            <Code path="/snippets/basic-routing-5" />

            <div class="divider"></div>
            <QuickNav :menu-items="subMenuWelcome" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
</template>
