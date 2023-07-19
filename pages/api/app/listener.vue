<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Listener</H1>
            <P> You can pass your own <Tag>
                    <Ref href="https://pkg.go.dev/net/#Listener" :blank="true">net.Listener</Ref>
                </Tag> using
                the <B>Listener</B> method. This method can be used to enable <B>TLS/HTTPS</B> with a custom tls.Config.
            </P>
            <Code path="/snippets/app-listener-1" />
            <P>
                Example implementation of <B>Listener</B>
            </P>
            <Code path="/snippets/app-listener-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Listener";
const description = "You can pass your own net.Listener using the Listener method. This method can be used to enable TLS/HTTPS with a custom tls.Config.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
