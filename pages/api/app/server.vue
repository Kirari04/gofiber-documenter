<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🚀 App - Server</H1>
            <P>
                Server returns the underlying
                <Ref
                    href="https://godoc.org/github.com/valyala/fasthttp#Server"
                    :blank="true"
                    >fasthttp server</Ref
                >
            </P>
            <Code path="/snippets/app-server-1" />
            <P></P>
            <Code path="/snippets/app-server-2" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuApp" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuApp" />
</template>

<script lang="ts" setup>
const title = "Fiber | 🚀 App - Server";
const description = "Server returns the underlying fasthttp server";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
