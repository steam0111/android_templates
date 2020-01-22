package ${packageName}.ui.fragment${dotSubpackage}

import android.os.Bundle
import android.view.View
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders
import ${packageName}.R
import ${packageName}.presentation.viewmodel${dotSubpackage}.${viewModelName}
import ${packageName}.ui.common.BaseFragment
<#if includeLayout> import kotlinx.android.synthetic.main.${fragmentName}.*</#if>

class ${className} : BaseFragment() {

	<#if includeLayout> override val layoutResId = R.layout.${fragmentName}</#if>

  private val viewModel: ${viewModelName} by lazy {
        ViewModelProviders.of(this).get(${viewModelName}::class.java)
  }

  override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

    }
}
