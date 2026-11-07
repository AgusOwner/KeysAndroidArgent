.class public final synthetic Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/DirectoryScanner;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/DirectoryScanner;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iput-object p2, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$0:Lorg/apache/tools/ant/DirectoryScanner;

    iget-object v1, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticLambda5;->f$2:Ljava/io/File;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tools/ant/DirectoryScanner;->lambda$isSelected$8$org-apache-tools-ant-DirectoryScanner(Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/selectors/FileSelector;)Z

    move-result p1

    return p1
.end method
