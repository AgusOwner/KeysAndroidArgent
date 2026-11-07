.class public Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkArgument"
.end annotation


# instance fields
.field private href:Ljava/lang/String;

.field private offline:Z

.field private packagelistLoc:Ljava/io/File;

.field private packagelistURL:Ljava/net/URL;

.field private resolveLink:Z

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    .line 1322
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1316
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->offline:Z

    .line 1319
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->resolveLink:Z

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 1339
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagelistLoc()Ljava/io/File;
    .locals 1

    .line 1355
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->packagelistLoc:Ljava/io/File;

    return-object v0
.end method

.method public getPackagelistURL()Ljava/net/URL;
    .locals 1

    .line 1371
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->packagelistURL:Ljava/net/URL;

    return-object v0
.end method

.method public isLinkOffline()Z
    .locals 1

    .line 1387
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->offline:Z

    return v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->href:Ljava/lang/String;

    return-void
.end method

.method public setOffline(Z)V
    .locals 0

    .line 1379
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->offline:Z

    return-void
.end method

.method public setPackagelistLoc(Ljava/io/File;)V
    .locals 0

    .line 1347
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->packagelistLoc:Ljava/io/File;

    return-void
.end method

.method public setPackagelistURL(Ljava/net/URL;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->packagelistURL:Ljava/net/URL;

    return-void
.end method

.method public setResolveLink(Z)V
    .locals 0

    .line 1396
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->resolveLink:Z

    return-void
.end method

.method public shouldResolveLink()Z
    .locals 1

    .line 1405
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$LinkArgument;->resolveLink:Z

    return v0
.end method
