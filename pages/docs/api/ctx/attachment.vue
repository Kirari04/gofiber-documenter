<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                Sets the HTTP response
                <Ref
                    href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition"
                    :blank="true"
                    >Content-Disposition</Ref
                >
                header field to <B>attachment</B>.
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
const name = "Attachment";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "Sets the HTTP response Content-Disposition header field to attachment.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
