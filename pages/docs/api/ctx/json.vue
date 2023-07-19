<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Converts any interface or string to <B>JSON</B> using the
                <Ref href="https://github.com/goccy/go-json" :blank="true">
                    goccy/go-json
                </Ref>
                package.
            </P>
            <div class="alert alert-info mb-6">
                <Icon icon="info" />
                <span> JSON also sets the content header to <B>application/json</B>. </span>
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
const name = "JSON";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Converts any interface or string to JSON using the goccy/go-json package.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
