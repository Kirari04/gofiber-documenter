<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Appends the specified value to the
                <B>HTTP response header</B> field.
            </P>
            <div class="alert alert-warning mb-6">
                <Icon icon="warning" />
                <span>
                    <B>CAUTION</B>: If the header is not already set, it creates
                    the header with the specified value.
                </span>
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
const name = "Append";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Appends the specified value to the HTTP response header field.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
