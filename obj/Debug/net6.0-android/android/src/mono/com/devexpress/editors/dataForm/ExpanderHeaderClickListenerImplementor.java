package mono.com.devexpress.editors.dataForm;


public class ExpanderHeaderClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.devexpress.editors.dataForm.ExpanderHeaderClickListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onHeaderClicked:()V:GetOnHeaderClickedHandler:Com.Devexpress.Editors.DataForm.IExpanderHeaderClickListenerInvoker, DevExpress.Maui.Android.Editors\n" +
			"";
		mono.android.Runtime.register ("Com.Devexpress.Editors.DataForm.IExpanderHeaderClickListenerImplementor, DevExpress.Maui.Android.Editors", ExpanderHeaderClickListenerImplementor.class, __md_methods);
	}


	public ExpanderHeaderClickListenerImplementor ()
	{
		super ();
		if (getClass () == ExpanderHeaderClickListenerImplementor.class)
			mono.android.TypeManager.Activate ("Com.Devexpress.Editors.DataForm.IExpanderHeaderClickListenerImplementor, DevExpress.Maui.Android.Editors", "", this, new java.lang.Object[] {  });
	}


	public void onHeaderClicked ()
	{
		n_onHeaderClicked ();
	}

	private native void n_onHeaderClicked ();

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
