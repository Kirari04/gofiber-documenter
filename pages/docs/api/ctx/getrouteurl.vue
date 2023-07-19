<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Generates URLs to named routes, with parameters. URLs are
                relative, for example: "/user/1831"
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "GetRouteURL";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    'Generates URLs to named routes, with parameters. URLs are relative, for example: "/user/1831"';

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
