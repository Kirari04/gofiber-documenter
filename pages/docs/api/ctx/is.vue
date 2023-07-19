<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Returns the matching content type, if the incoming request’s
                Content-Type HTTP header field matches the MIME type specified
                by the type parameter.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span> If the request has <B>no</B> body, it returns <B>false</B>. </span>
            </div>
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
const name = "Is";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Returns the matching content type, if the incoming request’s Content-Type HTTP header field matches the MIME type specified by the type parameter.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
