<?xml version="1.0"?>
<recipe>
    <!-- Fragment -->

    <instantiate from="src/app_package/ui/fragment/BlankFragment.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/fragment/${subpackage}${className}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/ui/fragment/${subpackage}${className}.kt" />

    <!-- Fragment layout-->
    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <!-- ViewModel-->
    <#if includeViewModel>
    <instantiate from="src/app_package/presentation/viewmodel/BlankViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/viewmodel/${subpackage}${viewModelName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/presentation/viewmodel/${subpackage}${viewModelName}.kt" />
    </#if>

    <#if includeInteractor>
    <instantiate from="src/app_package/model/interactor/BlankInteractor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/interactor/${subpackage}${interactorName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/model/interactor/${subpackage}${interactorName}.kt" />
    </#if>
</recipe>
