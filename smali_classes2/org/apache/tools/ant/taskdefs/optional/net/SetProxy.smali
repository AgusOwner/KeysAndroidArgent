.class public Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;
.super Lorg/apache/tools/ant/Task;
.source "SetProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;
    }
.end annotation


# static fields
.field private static final HTTP_PORT:I = 0x50

.field private static final SOCKS_PORT:I = 0x438


# instance fields
.field private nonProxyHosts:Ljava/lang/String;

.field protected proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field protected proxyPort:I

.field private proxyUser:Ljava/lang/String;

.field private socksProxyHost:Ljava/lang/String;

.field private socksProxyPort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    const/16 v1, 0x50

    .line 71
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    .line 78
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    const/16 v1, 0x438

    .line 83
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    .line 89
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method private traceSettingInfo()V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting proxy to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\'\'"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 252
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public applyWebProxySettings()V
    .locals 13

    .line 181
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v5, "ftp.proxyPort"

    const-string v6, "ftp.proxyHost"

    const-string v7, "https.proxyPort"

    const-string v8, "https.proxyHost"

    const-string v9, "http.proxyPassword"

    const-string v10, "http.proxyUser"

    const-string v11, "http.proxyPort"

    const-string v12, "http.proxyHost"

    if-nez v1, :cond_2

    .line 185
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->traceSettingInfo()V

    .line 187
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v11, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v8, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0, v7, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v4, "http.nonProxyHosts"

    .line 195
    invoke-virtual {v0, v4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https.nonProxyHosts"

    .line 196
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ftp.nonProxyHosts"

    .line 197
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v0, v10, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v3

    move v4, v1

    goto :goto_0

    :cond_2
    const-string v1, "resetting http proxy"

    .line 204
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v0, v12}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0, v11}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v0, v10}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, v9}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {v0, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0, v6}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    move v4, v3

    goto :goto_0

    :cond_3
    move v1, v4

    .line 217
    :goto_0
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 219
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "java.net.socks.password"

    const-string v6, "java.net.socks.username"

    const-string v7, "socksProxyPort"

    const-string v8, "socksProxyHost"

    if-nez v4, :cond_5

    .line 221
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 225
    invoke-virtual {v0, v6, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    const-string v4, "resetting socks proxy"

    .line 230
    invoke-virtual {p0, v4, v2}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->log(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {v0, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v0, v6}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    :cond_6
    move v3, v1

    .line 238
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    if-eqz v3, :cond_7

    .line 240
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$1;)V

    invoke-static {v1}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    .line 243
    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;

    const-string v2, ""

    invoke-direct {v1, v2, v2, v0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$ProxyAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy$1;)V

    invoke-static {v1}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->applyWebProxySettings()V

    return-void
.end method

.method public setNonProxyHosts(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->nonProxyHosts:Ljava/lang/String;

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    .line 118
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyPort:I

    return-void
.end method

.method public setProxyUser(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->proxyUser:Ljava/lang/String;

    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyHost:Ljava/lang/String;

    return-void
.end method

.method public setSocksProxyPort(I)V
    .locals 0

    .line 138
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/net/SetProxy;->socksProxyPort:I

    return-void
.end method
