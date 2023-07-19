<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> Returns the remote IP address of the request. </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <P>
                When registering the proxy request header in the fiber app, the
                ip address of the header is returned.
                <NuxtLink
                    to="/docs/api/fiber/config"
                    class="link link-hover link-primary"
                >
                    See Fiber configuration
                </NuxtLink>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-3`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "IP";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Returns the remote IP address of the request.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
