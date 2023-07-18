<template>
    <div class="flex grow">
        <div class="flex flex-col grow">
            <H1>Installation</H1>
            <P>
                First of all, download and install Go.
                <Tag>1.17</Tag> or higher is
                required.
            </P>
            <P> Installation is done using the <Tag>go get</Tag> command: </P>

            <Code path="/snippets/installation" />

            <div class="divider"></div>
            <QuickNav :menu-items="subMenuWelcome" />
        </div>
        <SubMenu :menu-items="subMenuWelcome" />
    </div>
</template>
