.class public Lorg/apache/tools/zip/UnicodePathExtraField;
.super Lorg/apache/tools/zip/AbstractUnicodeExtraField;
.source "UnicodePathExtraField.java"


# static fields
.field public static final UPATH_ID:Lorg/apache/tools/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const/16 v1, 0x7075

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method
