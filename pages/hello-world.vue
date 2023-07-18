<template>
    <div class="flex grow">
        <div class="flex flex-col grow">
            <H1>Hello, World!</H1>
            <P>
                Embedded below is essentially the most straightforward Fiber app
                you can create:
            </P>
            <Code path="/snippets/hello-world-1" />
            <P> Start the server: </P>
            <Code path="/snippets/hello-world-2" />
            <P>
                Browse to <Tag>http://localhost:3000</Tag> and you should see
                <Tag>Hello, World!</Tag> on the page.
            </P>
            <div class="divider"></div>
            <QuickNav :menu-items="subMenuWelcome" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
</template>
