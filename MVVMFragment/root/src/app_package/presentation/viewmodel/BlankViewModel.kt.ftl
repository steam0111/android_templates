package ${packageName}.presentation.viewmodel${dotSubpackage}

import androidx.lifecycle.MutableLiveData
import ${packageName}.presentation.viewmodel.BaseViewModel
import kotlinx.coroutines.*
import org.koin.core.KoinComponent
import org.koin.core.inject
<#if includeInteractor> import ${packageName}.model.interactor${dotSubpackage}.${interactorName}</#if>

class ${viewModelName} : BaseViewModel()<#if includeInteractor>, KoinComponent</#if> {

    <#if includeInteractor> private val interactor: ${interactorName} by inject()</#if>

    init {

    }

    //Events

    //Private methods
}
