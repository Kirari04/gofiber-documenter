<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P> Transfers the file from path as an <B>attachment</B>. </P>
            <P>
                Typically, browsers will prompt the user to download. By
                default, the
                <Ref
                    href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition"
                    :blank="true"
                    >Content-Disposition</Ref
                >
                header filename= parameter is the file path (this typically
                appears in the browser dialog).
            </P>
            <P>Override this default with the filename parameter.</P>
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
const name = "Download";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description = "Transfers the file from path as an attachment.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
