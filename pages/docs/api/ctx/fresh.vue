<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                When the response is still <B>fresh</B> in the client's cache
                <B>true</B> is returned, otherwise <B>false</B> is returned to
                indicate that the client cache is now stale and the full
                response should be sent.
            </P>
            <P>
                When a client sends the Cache-Control: no-cache request header
                to indicate an end-to-end reload request,
                <Tag>{{ name }}</Tag> will return false to make handling these
                requests transparent.
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "Fresh";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "When the response is still “fresh” in the client’s cache true is returned, otherwise false is returned to indicate that the client cache is now stale and the full response should be sent.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
