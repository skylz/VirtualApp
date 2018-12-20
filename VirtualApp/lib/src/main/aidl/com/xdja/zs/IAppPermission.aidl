// IAppPermission.aidl
package com.xdja.zs;

import android.content.ClipData;
import com.xdja.zs.IAppPermissionCallback;
import com.xdja.zs.IOnPrimaryClipChangedListener;

interface IAppPermission {

    boolean isSupportPermission(String permissionName);
    boolean isSupportEncrypt(String packageName);
    void clearPermissionData();
    void setAppPermission(String packageName, String appPermissionName, boolean isPermissionOpen);
    boolean getAppPermissionEnable(String packageName, String appPermissionName);
    void registerCallback(IAppPermissionCallback iAppPermissionCallback);
    void unregisterCallback();
    void interceptorTriggerCallback(String appPackageName, String permissionName);
    void cacheClipData(in ClipData clipData);
    ClipData getClipData();
    void cachePrimaryClipChangedListener(IOnPrimaryClipChangedListener listener);
    void callPrimaryClipChangedListener();
    void removePrimaryClipChangedListener();
    boolean getLocationEnable(String packageName);
    void setThirdAppInstallationEnable(boolean isEnable);
    boolean getThirdAppInstallationEnable();
}