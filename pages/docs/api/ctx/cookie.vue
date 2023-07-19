<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> <B>Set cookie</B> with the usuall attributes </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                <B>{{ name }}</B> struct
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-3`" />
            <P>
                Simpler example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-4`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "Cookie";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Set cookie";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
