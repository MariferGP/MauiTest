package crc645ec31792e946924e;


public class ChartPalette
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("ChartBindings.ChartPalette, Telerik.Android.Chart", ChartPalette.class, __md_methods);
	}


	public ChartPalette ()
	{
		super ();
		if (getClass () == ChartPalette.class) {
			mono.android.TypeManager.Activate ("ChartBindings.ChartPalette, Telerik.Android.Chart", "", this, new java.lang.Object[] {  });
		}
	}

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
