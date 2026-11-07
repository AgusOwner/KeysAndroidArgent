.class public Lorg/apache/tools/ant/taskdefs/HostInfo;
.super Lorg/apache/tools/ant/Task;
.source "HostInfo.java"


# static fields
.field private static final ADDR4:Ljava/lang/String; = "ADDR4"

.field private static final ADDR6:Ljava/lang/String; = "ADDR6"

.field private static final DEF_DOMAIN:Ljava/lang/String; = "localdomain"

.field private static final DEF_LOCAL_ADDR4:Ljava/lang/String; = "127.0.0.1"

.field private static final DEF_LOCAL_ADDR6:Ljava/lang/String; = "::1"

.field private static final DEF_LOCAL_NAME:Ljava/lang/String; = "localhost"

.field private static final DEF_REM_ADDR4:Ljava/lang/String; = "0.0.0.0"

.field private static final DEF_REM_ADDR6:Ljava/lang/String; = "::"

.field private static final DOMAIN:Ljava/lang/String; = "DOMAIN"

.field private static final NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private best4:Ljava/net/InetAddress;

.field private best6:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private inetAddrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private nameAddr:Ljava/net/InetAddress;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    return-void
.end method

.method private executeLocal()V
    .locals 11

    const-string v0, "::1"

    const-string v1, "127.0.0.1"

    const-string v2, "localhost"

    const-string v3, "NAME"

    const-string v4, "localdomain"

    const-string v5, "DOMAIN"

    const-string v6, "ADDR6"

    const-string v7, "ADDR4"

    .line 119
    :try_start_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    .line 120
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lorg/apache/tools/ant/taskdefs/HostInfo$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/HostInfo;)V

    .line 121
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 122
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectAddresses()V

    .line 124
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    if-eqz v8, :cond_0

    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 125
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    if-eqz v8, :cond_1

    .line 131
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-direct {p0, v7, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_1
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    if-eqz v8, :cond_2

    .line 136
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_2
    invoke-direct {p0, v6, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v9, "Error retrieving local host information"

    const/4 v10, 0x1

    .line 141
    invoke-virtual {p0, v9, v8, v10}, Lorg/apache/tools/ant/taskdefs/HostInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 142
    invoke-direct {p0, v5, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v7, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v6, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private executeRemote()V
    .locals 7

    const-string v0, "::"

    const-string v1, "0.0.0.0"

    const-string v2, "ADDR6"

    const-string v3, "ADDR4"

    .line 206
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectAddresses()V

    .line 210
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    .line 215
    :goto_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    if-eqz v4, :cond_1

    .line 216
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_1
    invoke-direct {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    if-eqz v4, :cond_2

    .line 221
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 223
    :cond_2
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error retrieving remote host information for host:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/tools/ant/taskdefs/HostInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 228
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setDomainAndName(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v3, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v2, v0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private hasHostName(Ljava/net/InetAddress;)Z
    .locals 1

    .line 150
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private selectAddresses()V
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 155
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    goto :goto_0

    .line 158
    :cond_1
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    invoke-direct {p0, v2, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best4:Ljava/net/InetAddress;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->best6:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->nameAddr:Ljava/net/InetAddress;

    return-void
.end method

.method private selectBestAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 173
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    invoke-virtual {p1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_4

    .line 197
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->hasHostName(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    move-object p1, p2

    :cond_5
    :goto_1
    return-object p1
.end method

.method private setDomainAndName(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2e

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "DOMAIN"

    const-string v2, "NAME"

    if-lez v0, :cond_0

    const/4 v3, 0x0

    .line 237
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "localdomain"

    .line 241
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/taskdefs/HostInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->executeRemote()V

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/HostInfo;->executeLocal()V

    :goto_1
    return-void
.end method

.method synthetic lambda$executeLocal$0$org-apache-tools-ant-taskdefs-HostInfo(Ljava/net/NetworkInterface;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->inetAddrs:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->host:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    const-string v0, "."

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/HostInfo;->prefix:Ljava/lang/String;

    :cond_0
    return-void
.end method
